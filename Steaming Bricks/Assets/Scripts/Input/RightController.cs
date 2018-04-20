using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using UnityEngine.SceneManagement;
using cakeslice;

public class RightController : BaseController {
    public bool grabbing; //are we holding an object
	private bool sliding; //are we sliding an object
	private bool raising; //are we in raise island mode

	// Use this for initialization
	protected override void Start () {
        base.Start();

        //set varibles for specific hand from parent
        handNode = XRNode.RightHand;
        triggerAxis = "RTrigger";
		gripAxis = "RGrip";

        //set fields for this specific hand
        grabbing = false;
		sliding = false;
		raising = false;
	}
	
	// Update is called once per frame
	protected override void Update () {
        base.Update();
		
	}



    public override void OnTriggerDown()
    {

		if (raising) {

			//highlight island

			//GameObject.Find ("Land").GetComponent<LevelRaise> ().UpdatePosition (gameObject);

			Debug.Log ("moving the island");

			//disable all other controls while in island mode
		} else {
			//check what kind of object we hit with the raycast and interact accordingly
			if (hit.tag == "Movable") {
				//everything checks out- actually pickup the object
				hit.GetComponent<MoveObject> ().PickUp (hit.transform, gameObject);
				grabbing = true;
				Debug.Log ("Grab");
			}

			if (hit.tag == "Key") {
				//change line colour
				rayLine.startColor = Color.blue;
				rayLine.endColor = Color.blue;

				hit.GetComponentInParent<DoorAndKey> ().CollectKey ();
			}
			if (hit.tag == "Door") {
				//change line colour
				rayLine.startColor = Color.blue;
				rayLine.endColor = Color.blue;

				Debug.Log ("Open Door");

				hit.transform.GetComponent<DoorAndKey> ().OpenDoor ();
			}

			if (hit.tag == "HidingSpace") {
				//chekc if we are hiding
				if (!hit.GetComponent<HidingSpace> ().hidding) { //we are not
					//hide
					hit.GetComponent<HidingSpace> ().Hide ();
				} else { //we are hiding
					//stop hiding
					hit.GetComponent<HidingSpace> ().StopHidding ();
				}
			}
			if (hit.tag == "Sliding") {
				//change line colour
				rayLine.startColor = Color.yellow;
				rayLine.endColor = Color.yellow;

				//everything checks out- actually pickup the object
				hit.GetComponent<MoveObject> ().PickUp (hit.transform, gameObject);
				sliding = true;
				Debug.Log ("Slide Grab");
			}

			if (hit.tag == "Start") {
				SceneManager.LoadScene (SceneManager.GetActiveScene ().buildIndex + 1);
			}
			if (hit.tag == "Exit") {
				Application.Quit ();
			}
		}
    }

    public override void OnTriggerHold()
    {
        //check if we are grabbing
        if (grabbing)
        {
            //drag that bish by the hair
            hit.GetComponent<MoveObject>().Drag(hit.transform);
        }
		if (sliding)
		{
			//drag that bish by the hair
			hit.GetComponent<MoveObject>().Drag(hit.transform);
		}
		if (raising) {

			Debug.Log ("holding trigger");
			GameObject.Find ("Land").GetComponent<LevelRaise> ().Move (gameObject);
		}
    }

    public override void OnTriggerUp()
    {
        //reset colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;

        //check if we are grabbing
        if (grabbing)
        {
            Debug.Log("Drop");
            //drop object
            hit.GetComponent<MoveObject>().Drop();

            //notify that we let go
            grabbing = false;
        }

		if (sliding)
		{
			Debug.Log("Slide Drop");
			//drop object
			hit.GetComponent<MoveObject>().Drop();

			//notify that we stopped sliding
			sliding = false;
		}

		if (raising) {

			GameObject.Find ("Land").GetComponent<LevelRaise> ().ResetPos ();

			//stop highlighting

		}
    }

	public override void OnGripDown() {

		//turn the normal hand off
		GetComponent<MeshRenderer> ().enabled = !GetComponent<MeshRenderer> ().enabled;
		//turn the island on
		transform.GetChild (0).gameObject.GetComponent<PopIn> ().Toggle();

		//acknowledge we are in island mode
		raising = !raising;
	}

	public override void OnGripHold() {}
	public override void OnGripUp() {}
}
