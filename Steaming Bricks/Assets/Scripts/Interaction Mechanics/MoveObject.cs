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

	public bool lockedX;
	public bool lockedY;
	public bool lockedZ;
	//public bool lockedRotation;

	private GameObject handle; //a value to store the controller for parenting

	//These values are used to see if the hand has moved
	private Vector3 prevPos;
	private Vector3 curPos;
	private float moveScale = 1f; //this would probably need to be some scale factor of map to bigTerry

	//The height of the ground plane
	private GameObject floor;

    // Use this for initialization
    void Start () {
		//if (lockedRotation)
		gameObject.GetComponent<Rigidbody> ().freezeRotation = true;

		floor = GameObject.Find ("Ground");
        gameObject.GetComponent<Rigidbody> ().mass = .0000001f;
    }
	
	// Update is called once per frame
	void Update () {
        

		//if (transform.position.y - (gameObject.GetComponent<MeshRenderer> ().bounds.extents.y) - 5 <= floor.transform.position.y)
		//	gameObject.GetComponent<Rigidbody> ().mass = 100000;

	}

    void OnCollisionEnter(Collision collision)
    {
        //update navmesh when you hit the ground
        //GameManager.Instance.UpdateNavMesh();
    }
        

    // VR GRABBING CONTROLS ===================================
	public void PickUp(Transform hitTransform, GameObject hand)
    {
		gameObject.GetComponent<Rigidbody> ().useGravity = false;
		//gameObject.GetComponent<Rigidbody> ().mass = 1;

		
		//Save the grabbing hand;
		handle = hand;
        curPos = handle.transform.position;
		prevPos = handle.transform.position;
		//this.transform.parent = handle;

    }

	public void Drag(Transform hitTransform) {

		Vector3 objectCurPosition = transform.position;

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


		transform.position = new Vector3(objectCurPosition.x + (moveX), objectCurPosition.y + (moveY), objectCurPosition.z + (moveZ));
	}

    public void Drop()
    {
		//gameObject.GetComponent<Rigidbody> ().mass = .00001f;
		gameObject.GetComponent<Rigidbody> ().useGravity = true;
		
    }

}