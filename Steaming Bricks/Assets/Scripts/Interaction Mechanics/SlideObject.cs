using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class SlideObject : MonoBehaviour {

	private Vector3 screenPoint;
	private Vector3 offset;
	private Vector3 initial_pos;
	private bool droppable = false;

	private int objectX;
	private float objectY;
	private int objectZ;

	public bool lockedX;
	public bool lockedY;
	public bool lockedZ;

	private GameObject handle; //a value to store the controller for parenting

	//These values are used to see if the hand has moved
	private Vector3 prevPos;
	private Vector3 curPos;
	private float moveScale = 85f; //this would probably need to be some scale factor of map to bigTerry

	private GameObject centerObject;

	private List<Node> objectNodes;

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

	// VR GRABBING CONTROLS ===================================
	public void PickUp(Transform hitTransform, GameObject hand)
	{
		//Get the size of the object based on its extents
		objectX = Mathf.CeilToInt(transform.GetComponent<MeshRenderer> ().bounds.extents.x * 2 / step);
		objectY = transform.GetComponent<MeshRenderer> ().bounds.extents.y; //this should not be divided to preserve correct height
		objectZ = Mathf.CeilToInt(transform.GetComponent<MeshRenderer> ().bounds.extents.z * 2 / step);

		//calculate an offset from center
		float xOffset = Mathf.Floor (objectX / 2);
		float zOffset = Mathf.Floor (objectZ / 2);

		//fix the offset if it takes an even number of squares
		if (objectX % 2 == 0)
			xOffset += .5f;
		if (objectZ % 2 == 0)
			zOffset += .5f;

		//creates an invisible object and parents it for manipulation
		centerObject = Instantiate (GridManager.Instance.invisibleCube, transform.position, Quaternion.identity); 
		transform.SetParent (centerObject.transform);

		//gets all nodes under the object
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

		//turn off collision detection for this object on the grid
		GetComponent<Collider>().enabled = false;
		GridManager.Instance.UpdateGrid();
		GetComponent<Collider>().enabled = true;

		//Save the grabbing hand;
		handle = hand;
		curPos = handle.transform.position;
		prevPos = handle.transform.position;

	}

	public void Drag(Transform hitTransform) {

		Vector3 objectCurPosition = centerObject.transform.position;

		//update positions of hand to compare
		prevPos = curPos;
		curPos = handle.transform.position;

		float moveX = 0;
		float moveY = 0;
		float moveZ = 0;

		//prevent motion in certain directions if the object can't move that way
		if (!lockedX)
			moveX = (curPos.x-prevPos.x) * moveScale;
		if (!lockedY)
			moveY = (curPos.y-prevPos.y) * moveScale;
		if (!lockedZ)
			moveZ = (curPos.z-prevPos.z) * moveScale;

		//calculate the new position vector
		Vector3 newPosition = new Vector3(objectCurPosition.x + (moveX * step), objectCurPosition.y + (moveY * step), objectCurPosition.z + (moveZ * step));

		//generate a list of the next nodes the object will fill
		List<Node> nextNodes = new List<Node> ();
		for (int i = 0; i < objectX; i++) {
			for (int k = 0; k < objectZ; k++) {
				nextNodes.Add (GridManager.Instance.NodePoint (new Vector3 (
					newPosition.x - (i * step), newPosition.y, newPosition.z - (k * step))));
			}
		}

        Debug.Log(nextNodes);
		//move the object if the next nodes it takes up are free
		if (CheckFreeGrid (nextNodes))
			centerObject.transform.position = newPosition;
		
		//regenerate the list of nodes the object will take up
		objectNodes = new List<Node> ();
		for (int i = 0; i < objectX; i++) {
			for (int k = 0; k < objectZ; k++) {
				objectNodes.Add (GridManager.Instance.NodePoint (new Vector3 (
					centerObject.transform.position.x - (i * step), centerObject.transform.position.y, centerObject.transform.position.z - (k * step))));
			}
		}
	}

	public void Drop()
	{
		//drop the object if there is room
		if (CheckFreeGrid())
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
	}

	/// <summary>
	/// Runs through the current nodes under the object to see if they are all free
	/// </summary>
	/// <returns><c>true</c>, if all nodes were free, <c>false</c> otherwise.</returns>
	private bool CheckFreeGrid() {

		foreach (Node n in objectNodes) {

			if (!GridManager.Instance.NodePoint (n.worldPosition).free) {
				Debug.Log("false");
				return false;
			}
		}
		Debug.Log("true");
		return true;
	}

	/// <summary>
	/// Checks the given nodes to see if they are free
	/// </summary>
	/// <returns><c>true</c>, if they are all free, <c>false</c> otherwise.</returns>
	/// <param name="nodes">the List of nodes to be checked </param>
	private bool CheckFreeGrid(List<Node> nodes) {
		
		foreach (Node n in nodes) {

			if (!GridManager.Instance.NodePoint (n.worldPosition).free) {
				return false;
			}
		}
		return true;
	}
}
