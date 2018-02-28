using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class RightController : BaseController {
    private bool grabbing; //are we holding an object

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
            hit.collider.gameObject.GetComponent<MoveObject>().PickUp(hit.transform);
            grabbing = true;
            Debug.Log("Grab");
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
    }
}
