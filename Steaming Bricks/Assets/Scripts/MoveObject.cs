using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveObject : MonoBehaviour {

    private Vector3 screenPoint;
    private Vector3 offset;
    private Vector3 initial_pos;
    private bool droppable = false;

    //Level walls
    //To be replaced by range of actual floor of level
    //Redundant with physics?
    private Vector3 rangeA = new Vector3(1600.0f,0.0f,1600.0f);
    private Vector3 rangeB = new Vector3(-1600.0f,0.0f,-1600.0f);

    //The distance of each step for the object
    private int step;

	//The floor height (y) to set the object to
	private float floor;

    // Use this for initialization
    void Start () {
        //Set rangeA and rangeB from grid manager
        //rangeA = GridManager.Instance.worldTopRight;
        //rangeB = GridManager.Instance.worldBotLeft;
        //Debug.Log(GridManager.Instance.worldTopRight);

        //Set step as distance between 2 nodes in grid manager
		step = Mathf.RoundToInt(GridManager.Instance.nodeRadius * 2);

		//Set floor (y) to height of the floor plane
		floor = 23 + GridManager.Instance.floorPlane.transform.position.y; //Make this not half hardcoded
    }
	
	// Update is called once per frame
	void Update () {
		
	}

    //For object pick up
    void OnMouseDown()
    {
        GridManager.Instance.curr_object = transform;
        initial_pos = transform.position;        
        screenPoint = Camera.main.WorldToScreenPoint(transform.position);
        offset = transform.position - Camera.main.ScreenToWorldPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
        GetComponent<Collider>().enabled = false;
        GridManager.Instance.UpdateGrid();
        GetComponent<Collider>().enabled = true;
    }

    //For object move
    void OnMouseDrag()
    {
        //GridManager.Instance.UpdateGrid();
        Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);

        Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint);// + offset;

        //To ensure object doesnt phase through floor 
        //Adding physics makes this redundant
        if(curPosition.y < 37.5f)
        {
            curPosition.y = 37.5f;
        }

        //Store y value so that object can still move in that direction when it hits castle wall
        float y = curPosition.y;

        //You need to be this close to floor to snap object into position where it can be dropped
        //Else it return to initial position when dropped
        //Will be slightly altered when step distance is determined
        if (y <= step*2)
        {
            curPosition.x = ((int)Mathf.Round(curPosition.x) / step) * step;
            curPosition.z = ((int)Mathf.Round(curPosition.z) / step) * step;
            droppable = true;
        }
        else
        {
            droppable = false;
        }

        //Condition for when you hit castle wall. Redundant with physics?
        if (curPosition.x <= rangeA.x && curPosition.x >= rangeB.x && curPosition.z <= rangeA.z && curPosition.z >= rangeB.z)
        {
            //Within walls
            transform.position = curPosition;
        }
        else
        {
            //Prevent it from crossing the wall
            Vector3 temp = transform.position;
            temp.y = y;
            transform.position = temp;
        }

    }

    private void OnMouseUp()
    {

        if (droppable && GridManager.Instance.NodePoint(GridManager.Instance.curr_object.position).free)
        {
            Vector3 curPosition = transform.position;
			curPosition.y = floor;
            transform.position = curPosition;
        }
        else
        {
            transform.position = initial_pos;
        }
        GridManager.Instance.UpdateGrid();
    }
}
