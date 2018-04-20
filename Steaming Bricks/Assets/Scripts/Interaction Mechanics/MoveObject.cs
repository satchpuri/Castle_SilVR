/*
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class MoveObject : MonoBehaviour {

    private Vector3 screenPoint;
    private Vector3 offset;
    private Vector3 initial_pos;

	private Vector3 originalPos;

	public bool lockedX;
	public bool lockedY;
	public bool lockedZ;

	public bool outOfBounds = false;

	private bool zeroG = false;
	private float zeroGFixTimer = 0f;
	//public bool lockedRotation;

	private GameObject handle; //a value to store the controller for parenting

	//These values are used to see if the hand has moved
	private Vector3 prevPos;
	private Vector3 curPos;
	private float moveScale = 1f; //this would probably need to be some scale factor of map to bigTerry

	//The height of the ground plane
	private GameObject floor;

	private GameObject boundary;

    // Use this for initialization
    void Start () {
		//if (lockedRotation)
		gameObject.GetComponent<Rigidbody> ().freezeRotation = true;

		//it is best to have the plane there and be invisible because this height is relevant.
		floor = GameObject.Find ("Ground");
        //gameObject.GetComponent<Rigidbody> ().mass = .0000001f;

		//a trigger placed around the level
		boundary = GameObject.Find ("Boundary");
    }
	
	// Update is called once per frame
	void Update () {
        
		//if an object is out of bounds, return it to the original position when it gets low
		if (outOfBounds && (transform.position.y < floor.transform.position.y - 0.5f || transform.position.y > floor.transform.position.y + 10f)) {
			transform.position = new Vector3 (originalPos.x, floor.transform.position.y + .2f, originalPos.z);
			gameObject.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		}
		//if an object is in bounds, prevent it from falling past the floor.
		if (!outOfBounds && transform.position.y - gameObject.GetComponent<Rigidbody> ().velocity.y < floor.transform.position.y) {
			transform.position = new Vector3 (transform.position.x, floor.transform.position.y + .5f, transform.position.z);
			GetComponent<Rigidbody> ().velocity = Vector3.zero;
		}

		//this code fixes zero gravity by dropping the object after a certain amount of time. There is the possibility of this causing unforseen consequences.
		if (zeroG) {
			zeroGFixTimer += Time.deltaTime;

			//thenumber of seconds to wait before auto dropping
			if (zeroGFixTimer > 1) {
				Drop ();
				zeroGFixTimer = 0;
			}
		}

		//if (transform.position.y - (gameObject.GetComponent<MeshRenderer> ().bounds.extents.y) - 5 <= floor.transform.position.y)
		//	gameObject.GetComponent<Rigidbody> ().mass = 100000;

	}

    void OnCollisionEnter(Collision collision)
    {
        //update navmesh when you hit the ground
        //GameManager.Instance.UpdateNavMesh();
    }

	void OnTriggerExit(Collider other) {
		if (other.tag == "Boundary")
			outOfBounds = true;
	}

	void OnTriggerEnter(Collider other) {
		if (other.tag == "Boundary")
			outOfBounds = false;
	}
        

    // VR GRABBING CONTROLS ===================================
	public void PickUp(Transform hitTransform, GameObject hand)
    {

        //this.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;

        gameObject.GetComponent<Rigidbody> ().useGravity = false;
		zeroG = true;
		//gameObject.GetComponent<Rigidbody> ().mass = 1;

		originalPos = transform.position;
			
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

		zeroGFixTimer = 0;
	}

    public void Drop()
    {
		//gameObject.GetComponent<Rigidbody> ().mass = .00001f;
		gameObject.GetComponent<Rigidbody> ().useGravity = true;
		zeroG = false;

        //this.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;

    }

}
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class MoveObject : MonoBehaviour {

    private Vector3 screenPoint;
    private Vector3 offset;
    private Vector3 initial_pos;

	private Vector3 originalPos;
	private Quaternion originalRot;

	public bool lockedX;
	public bool lockedY;
	public bool lockedZ;

	public bool outOfBounds = false;

	private bool zeroG = false;
	private float zeroGFixTimer = 0f;
	//public bool lockedRotation;

	private GameObject handle; //a value to store the controller for parenting

	//These values are used to see if the hand has moved
	private Vector3 prevPos;
	private Vector3 curPos;
	private float moveScale = 1f; //this would probably need to be some scale factor of map to bigTerry

	//The height of the ground plane
	private GameObject floor;

	private GameObject boundary;

    // Use this for initialization
    void Start () {
		//if (lockedRotation)
		gameObject.GetComponent<Rigidbody> ().freezeRotation = true;

		//it is best to have the plane there and be invisible because this height is relevant.
		floor = GameObject.Find ("Ground");
        //gameObject.GetComponent<Rigidbody> ().mass = .0000001f;

		//a trigger placed around the level
		boundary = GameObject.Find ("Boundary");
    }
	
	// Update is called once per frame
	void Update () {
        
		//if an object is out of bounds, return it to the original position when it gets low
		if (outOfBounds && (transform.position.y < floor.transform.position.y - 0.5f || transform.position.y > floor.transform.position.y + 10f)) {
			transform.position = new Vector3 (originalPos.x, floor.transform.position.y + .2f, originalPos.z);
			gameObject.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		}
		//if an object is in bounds, prevent it from falling past the floor.
        else if (!outOfBounds &&  handle == null && transform.position.y < floor.transform.position.y) { //GameManager.Instance.rightHand.GetComponent<RightController>().grabbing
			transform.position = new Vector3 (transform.position.x, floor.transform.position.y + .5f, transform.position.z);
			GetComponent<Rigidbody> ().velocity = Vector3.zero;
		}

		//this code fixes zero gravity by dropping the object after a certain amount of time. There is the possibility of this causing unforseen consequences.
		if (zeroG) {
			zeroGFixTimer += Time.deltaTime;

			//thenumber of seconds to wait before auto dropping
			if (zeroGFixTimer > 0.5f) {
				Drop ();
				zeroGFixTimer = 0;
			}
		}

		//if (transform.position.y - (gameObject.GetComponent<MeshRenderer> ().bounds.extents.y) - 5 <= floor.transform.position.y)
		//	gameObject.GetComponent<Rigidbody> ().mass = 100000;

	}

    void OnCollisionEnter(Collision collision)
    {
        //update navmesh when you hit the ground
        //GameManager.Instance.UpdateNavMesh();
    }

	void OnTriggerExit(Collider other) {
		if (other.tag == "Boundary")
			outOfBounds = true;
	}

	void OnTriggerEnter(Collider other) {
		if (other.tag == "Boundary")
			outOfBounds = false;
	}
        

    // VR GRABBING CONTROLS ===================================
	public void PickUp(Transform hitTransform, GameObject hand)
    {
		gameObject.GetComponent<Rigidbody> ().useGravity = false;
		zeroG = true;
		//gameObject.GetComponent<Rigidbody> ().mass = 1;

		originalPos = transform.position;
		originalRot = transform.rotation;
			
		//Save the grabbing hand;
		handle = hand;
        curPos = handle.transform.position;
		prevPos = handle.transform.position;
		//this.transform.parent = handle;

        if (!lockedX && !lockedY && !lockedZ)
        {
            //set parent to be hand
            transform.SetParent(handle.transform);

            //turn off collider
            this.gameObject.GetComponent<Collider>().enabled = false;
        }

    }

	public void Drag(Transform hitTransform) {

		if (transform.parent != handle.transform) {
			Vector3 objectCurPosition = transform.position;

			prevPos = curPos;
			curPos = handle.transform.position;

			float moveX = 0;
			float moveY = 0;
			float moveZ = 0;

			//prevent motion in certain directions if the object can't move that way
			if (!lockedX)
				moveX = (curPos.x - prevPos.x) * moveScale;
			if (!lockedY)
				moveY = (curPos.y - prevPos.y) * moveScale;
			if (!lockedZ)
				moveZ = (curPos.z - prevPos.z) * moveScale;


			transform.position = new Vector3 (objectCurPosition.x + (moveX), objectCurPosition.y + (moveY), objectCurPosition.z + (moveZ));
		}
		zeroGFixTimer = 0;
	}

    public void Drop()
    {
		//gameObject.GetComponent<Rigidbody> ().mass = .00001f;
		gameObject.GetComponent<Rigidbody> ().useGravity = true;
		zeroG = false;

		transform.rotation = originalRot;

        if (!lockedX && !lockedY && !lockedZ)
        {
            transform.parent = GameObject.Find("Moveable").transform;
            this.gameObject.GetComponent<Collider>().enabled = true;
        }
		
    }

}

