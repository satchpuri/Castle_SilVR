using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class MoveObject : MonoBehaviour {

    private Vector3 screenPoint;
    private Vector3 offset;
    private Vector3 initial_pos;
    private bool droppable = false;

	private int objectX;
	private float objectY;
	private int objectZ;

	private GameObject centerObject;

    //Level walls
    //To be replaced by range of actual floor of level
    //Redundant with physics?
    private Vector3 rangeA = new Vector3(1600.0f,0.0f,1600.0f);
    private Vector3 rangeB = new Vector3(-1600.0f,0.0f,-1600.0f);

    //The distance of each step for the object. Also the integer width of one node
    private int step;

	//The height of the ground plane
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
		floor = GridManager.Instance.floorPlane.transform.position.y;
    }
	
	// Update is called once per frame
	void Update () {
        
	}

    //For object pick up
    void OnMouseDown()
    {
        //GridManager.Instance.curr_object = transform;

		objectX = Mathf.CeilToInt(transform.GetComponent<MeshRenderer> ().bounds.extents.x * 2 / step);
		objectY = transform.GetComponent<MeshRenderer> ().bounds.extents.y; //this should not be divided to preserve correct height
		objectZ = Mathf.CeilToInt(transform.GetComponent<MeshRenderer> ().bounds.extents.z * 2 / step);
		Debug.Log ("obx " + transform.GetComponent<MeshRenderer> ().bounds.extents.x + " obz " + transform.GetComponent<MeshRenderer> ().bounds.extents.z + " step " + step);
		Debug.Log ("obx " + objectX + " obz " + objectZ);

		float xOffset = Mathf.Floor (objectX / 2);
		float zOffset = Mathf.Floor (objectZ / 2);

		if (objectX % 2 == 0)
			xOffset += .5f;
		if (objectZ % 2 == 0)
			zOffset += .5f;
        
		centerObject = Instantiate (GridManager.Instance.invisibleCube, new Vector3 (transform.position.x + (xOffset * step), transform.position.y, transform.position.z + (zOffset * step)), Quaternion.identity);
		transform.SetParent (centerObject.transform);

		List<Node> objectNodes = new List<Node> ();
		for (int i = 0; i < objectX; i++) {
			for (int k = 0; k < objectZ; k++) {
				objectNodes.Add (GridManager.Instance.NodePoint (new Vector3 (
					centerObject.transform.position.x - (i * step), centerObject.transform.position.y, centerObject.transform.position.z - (k * step))));
			}
		}

		GridManager.Instance.curr_object = centerObject.transform;
		GridManager.Instance.path = objectNodes;
			
		initial_pos = centerObject.transform.position;        
		screenPoint = Camera.main.WorldToScreenPoint(centerObject.transform.position);
		offset = centerObject.transform.position - Camera.main.ScreenToWorldPoint(
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
        if(curPosition.y < floor)
        {
            curPosition.y = floor;
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
			centerObject.transform.position = curPosition;
        }
        else
        {
            //Prevent it from crossing the wall
			Vector3 temp = centerObject.transform.position;
            temp.y = y;
			centerObject.transform.position = temp;
        }

    }

    private void OnMouseUp()
    {

        if (droppable && GridManager.Instance.NodePoint(GridManager.Instance.curr_object.position).free)
        {
			Vector3 curPosition = centerObject.transform.position;
			curPosition.y = floor + objectY;
			centerObject.transform.position = curPosition;
        }
        else
        {
			centerObject.transform.position = initial_pos;
        }
        GridManager.Instance.UpdateGrid();

		transform.parent = null;
		Destroy (centerObject);
    }

    // VR GRABBING CONTROLS ===================================
    public void PickUp(Transform hitTransform)
    {

        objectX = Mathf.CeilToInt(transform.GetComponent<MeshRenderer> ().bounds.extents.x * 2 / step);
        objectY = transform.GetComponent<MeshRenderer> ().bounds.extents.y; //this should not be divided to preserve correct height
        objectZ = Mathf.CeilToInt(transform.GetComponent<MeshRenderer> ().bounds.extents.z * 2 / step);

        float xOffset = Mathf.Floor (objectX / 2);
        float zOffset = Mathf.Floor (objectZ / 2);

        if (objectX % 2 == 0)
            xOffset += .5f;
        if (objectZ % 2 == 0)
            zOffset += .5f;

        centerObject = Instantiate (GridManager.Instance.invisibleCube, transform.position, Quaternion.identity); 
        transform.SetParent (centerObject.transform);

        List<Node> objectNodes = new List<Node> ();
        for (int i = 0; i < objectX; i++) {
            for (int k = 0; k < objectZ; k++) {
                objectNodes.Add (GridManager.Instance.NodePoint (new Vector3 (
                    centerObject.transform.position.x - (i * step), centerObject.transform.position.y, centerObject.transform.position.z - (k * step))));
            }
        }

        GridManager.Instance.curr_object = centerObject.transform;
        GridManager.Instance.path = objectNodes;

        initial_pos = centerObject.transform.position;        
        offset = centerObject.transform.position - hitTransform.position;

        GetComponent<Collider>().enabled = false;
        GridManager.Instance.UpdateGrid();
        GetComponent<Collider>().enabled = true;
    }

    public void Drag(Transform hitTransform)
    {
        Vector3 curPosition = hitTransform.position;// + offset;

        //To ensure object doesnt phase through floor 
        //Adding physics makes this redundant
        if(curPosition.y < floor)
        {
            curPosition.y = floor;
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
            centerObject.transform.position = curPosition;
        }
        else
        {
            //Prevent it from crossing the wall
            Vector3 temp = centerObject.transform.position;
            temp.y = y;
            centerObject.transform.position = temp;
        }
    }

    public void Drop()
    {
        if (droppable && GridManager.Instance.NodePoint(GridManager.Instance.curr_object.position).free)
        {
            Vector3 curPosition = centerObject.transform.position;
            curPosition.y = floor + objectY;
            centerObject.transform.position = curPosition;
        }
        else
        {
            centerObject.transform.position = initial_pos;
        }
        GridManager.Instance.UpdateGrid();

        transform.parent = null;
        Destroy (centerObject);
    }
}
