using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlideObject : MonoBehaviour
{
    //For object click and slide
    private Vector3 screenPoint;
    private Vector3 offset;

    //To prevent object from moving in the y direction
    private Vector3 initial_pos;

    //NOTE - To prevent object from clipping through obstacles/walls, 
    //all objects need rigidbody for Physics.Raycast

    //To prevent object from moving through walls
    private Vector3 prev_pos;
    private bool forwardBlocked, backwardBlocked, leftBlocked, rightBlocked = false;
    private float rayDistance;
    protected RaycastHit hit; //what the raycast hits

    //Level walls
    //To be replaced by range of actual floor of level
    //Redundant with physics?
    private Vector3 rangeA = new Vector3(1600.0f, 0.0f, 1600.0f);
    private Vector3 rangeB = new Vector3(-1600.0f, 0.0f, -1600.0f);

	//The distance of each step for the object
	private int step;

	//The floor height (y) to set the object to
	private float floor;

    // Use this for initialization
    void Start()
    {
		//Set step as distance between 2 nodes in grid manager
		step = Mathf.RoundToInt(GridManager.Instance.nodeRadius * 2);
        
        //To check if there is a wall near this object (may need to be edited based on grid and level layout)
        rayDistance = transform.GetComponent<MeshRenderer>().bounds.extents.z/2 + GridManager.Instance.nodeRadius*3;
        
        //Set floor (y) to height of the floor plane
        floor = GridManager.Instance.floorPlane.transform.position.y;
    }

    // Update is called once per frame
    void Update()
    {

    }

    //For object pick up
    void OnMouseDown()
    {
        GridManager.Instance.curr_object = transform;
        screenPoint = Camera.main.WorldToScreenPoint(transform.position);
        offset = transform.position - Camera.main.ScreenToWorldPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
        GetComponent<Collider>().enabled = false;
        GridManager.Instance.UpdateGrid();
        GetComponent<Collider>().enabled = true;

        initial_pos = transform.position;
        //Set as initial position for initial value
        prev_pos = transform.position;
    }

    //For object move
    void OnMouseDrag()
    {
        //GridManager.Instance.UpdateGrid();
        Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);

        Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint);// + offset;

        //To ensure object doesnt phase through floor 
        //Adding physics makes this redundant
        if (curPosition.y < floor)
        {
            curPosition.y = floor;
        }

        //Store y value so that object can still move in that direction when it hits castle wall
        //float y = curPosition.y;

        //To slide objects in steps in the grid

        curPosition.x = ((int)Mathf.Round(curPosition.x) / step) * step;
        curPosition.z = ((int)Mathf.Round(curPosition.z) / step) * step;


        //So that it doesn't lift off ground
        curPosition.y = initial_pos.y;
        
        //Prevent object clipping begin--------------
        //To check is there an obsatcle to the right of the object 
        if (Physics.Raycast(transform.position, -transform.right, out hit, rayDistance))
        {
            if (hit.rigidbody.gameObject.layer == 8 && (curPosition.x - transform.position.x < 0))
            {
                leftBlocked = true;
            }
            else
            {
                leftBlocked = false;
            }
        }
        else
        {
            leftBlocked = false;
        }

        //To the left
        if (Physics.Raycast(transform.position, transform.right, out hit, rayDistance))
        {
            //If hit obsatcle is a part of the filled layer (may not be required)
            //Also if new slidong object position is going toward or away from the hit obsatcle
            if (hit.rigidbody.gameObject.layer == 8 && (curPosition.x - transform.position.x > 0))
            {
                rightBlocked = true;
            }
            else
            {
                rightBlocked = false;
            }
        }
        else
        {
            rightBlocked = false;
        }

        //In front of
        if (Physics.Raycast(transform.position, transform.forward, out hit, rayDistance))
        {
            if (hit.rigidbody.gameObject.layer == 8 && (curPosition.z - transform.position.z > 0))
            {
                forwardBlocked = true;
            }
            else
            {
                forwardBlocked = false;
            }
        }
        else
        {
            forwardBlocked = false;
        }

        //Behind
        if (Physics.Raycast(transform.position, -transform.forward, out hit, rayDistance))
        {
            if (hit.rigidbody.gameObject.layer == 8 && (curPosition.z - transform.position.z < 0))
            {
                backwardBlocked = true;
            }
            else
            {
                backwardBlocked = false;
            }
        }
        else
        {
            backwardBlocked = false;
        }

        //Lock object in x direction, prevent it from moving through the wall
        if (leftBlocked || rightBlocked)
        {
            curPosition.x = prev_pos.x;
        }

        //Lock object in z direction
        if (forwardBlocked || backwardBlocked)
        {
            curPosition.z = prev_pos.z;
        }
        //Prevent object clipping end--------------

        //Condition for when you hit castle wall
        if (GridManager.Instance.NodePoint(curPosition).free && curPosition.x <= rangeA.x && curPosition.x >= rangeB.x && curPosition.z <= rangeA.z && curPosition.z >= rangeB.z)
        {
            //update position
            transform.position = curPosition;
        }
        //Store previos position for next cycle
        prev_pos = curPosition;

    }

    private void OnMouseUp()
    {
        GridManager.Instance.UpdateGrid();
    }
}
