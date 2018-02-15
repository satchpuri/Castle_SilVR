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
    private Vector3 rangeA = new Vector3(4.5f, 0, 4.5f);
    private Vector3 rangeB = new Vector3(-4.5f, 0, -4.5f);

    //The distance of each step for the object
    //Currently not in use
    private float step = 0.5f;

    // Use this for initialization
    void Start () {
		//Set rangeA and rangeB from grid manager
        //Set step as distance between 2 nodes in grid manager
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    //For object pick up
    void OnMouseDown()
    {
        initial_pos = transform.position;        
        screenPoint = Camera.main.WorldToScreenPoint(transform.position);
        offset = transform.position - Camera.main.ScreenToWorldPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
    }

    //For object move
    void OnMouseDrag()
    {
        Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);
        
        Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint) + offset;

        //To ensure object doesnt phase through floor 
        //Adding physics makes this redundant
        if(curPosition.y < 0.5f)
        {
            curPosition.y = 0.5f;
        }

        //Store y value so that object can still move in that direction when it hits castle wall
        float y = curPosition.y;

        //You need to be this close to floor to snap object into position where it can be dropped
        //Else it return to initial position when dropped
        //Will be slightly altered when step distance is determined
        if (y <= 1.0f)
        {
            curPosition.x = Mathf.Round(curPosition.x) - 0.5f;
            curPosition.z = Mathf.Round(curPosition.z) - 0.5f;
            droppable = true;
        }
        else
        {
            droppable = false;
        }

        //Condition for when you hit castle wall. Redundant with physics?
        if (curPosition.x <= rangeA.x && curPosition.x >= rangeB.x && curPosition.z <= rangeA.z && curPosition.z >= rangeB.z)
        {
            transform.position = curPosition;
        }
        else
        {
            Vector3 temp = transform.position;
            temp.y = y;
            transform.position = temp;
        }

    }

    private void OnMouseUp()
    {

        if (droppable /*&& if grid node is free*/)
        {
            Vector3 curPosition = transform.position;
            curPosition.y = 0.5f;
            transform.position = curPosition;
        }
        else
        {
            transform.position = initial_pos;
        }
    }
}
