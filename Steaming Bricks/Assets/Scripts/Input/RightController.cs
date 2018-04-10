using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using UnityEngine.SceneManagement;

public class RightController : BaseController {
    private bool grabbing; //are we holding an object
	private bool sliding; //are we sliding an object

	// Use this for initialization
	protected override void Start () {
        base.Start();

        //set varibles for specific hand from parent
        handNode = XRNode.RightHand;
        triggerAxis = "RTrigger";

        //set fields for this specific hand
        grabbing = false;
	}
	
	// Update is called once per frame
	protected override void Update () {
        base.Update();
		
	}

    public override void OnTriggerDown()
    {
        //check what kind of object we hit with the raycast and interact accordingly
        if(hit.collider.gameObject.tag == "Movable")
        {
            //change line colour
            rayLine.startColor = Color.green;
            rayLine.endColor = Color.green;

            //everything checks out- actually pickup the object
			hit.collider.gameObject.GetComponent<MoveObject>().PickUp(hit.transform, gameObject);
            grabbing = true;
            Debug.Log("Grab");
        }

        if (hit.collider.gameObject.tag == "Key")
        {
            //change line colour
            rayLine.startColor = Color.blue;
            rayLine.endColor = Color.blue;

            hit.collider.gameObject.GetComponent<DoorAndKey>().CollectKey();
        }
        if (hit.collider.gameObject.tag == "Door")
        {
            //change line colour
            rayLine.startColor = Color.blue;
            rayLine.endColor = Color.blue;

            hit.collider.transform.parent.GetComponent<DoorAndKey>().OpenDoor();
        }

        if (hit.collider.gameObject.tag == "HidingSpace")
        {
            //chekc if we are hiding
            if (!hit.collider.gameObject.GetComponent<HidingSpace>().hidding) //we are not
            {
                //hide
                hit.collider.gameObject.GetComponent<HidingSpace>().Hide();
            }
            else //we are hiding
            {
                //stop hiding
                hit.collider.gameObject.GetComponent<HidingSpace>().StopHidding();
            }
        }
		if(hit.collider.gameObject.tag == "Sliding")
		{
			//change line colour
			rayLine.startColor = Color.yellow;
			rayLine.endColor = Color.yellow;

			//everything checks out- actually pickup the object
			hit.collider.gameObject.GetComponent<MoveObject>().PickUp(hit.transform, gameObject);
			sliding = true;
			Debug.Log("Slide Grab");
		}

        if(hit.collider.gameObject.tag =="Start")
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
        if(hit.collider.gameObject.tag == "Exit")
        {
            Application.Quit();
        }
    }

    public override void OnTriggerHold()
    {
        //check if we are grabbing
        if (grabbing)
        {
            //drag that bish by the hair
            hit.collider.gameObject.GetComponent<MoveObject>().Drag(hit.transform);
        }
		if (sliding)
		{
			//drag that bish by the hair
			hit.collider.gameObject.GetComponent<MoveObject>().Drag(hit.transform);
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
            hit.collider.gameObject.GetComponent<MoveObject>().Drop();

            //notify that we let go
            grabbing = false;
        }

		if (sliding)
		{
			Debug.Log("Slide Drop");
			//drop object
			hit.collider.gameObject.GetComponent<MoveObject>().Drop();

			//notify that we stopped sliding
			sliding = false;
		}
    }
}
