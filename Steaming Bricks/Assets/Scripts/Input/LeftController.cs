using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class LeftController : BaseController {

	// Use this for initialization
    protected override void Start () {
        base.Start();

        //set varibles for specific hand from parent
        handNode = XRNode.LeftHand;
        triggerAxis = "LTrigger";
		gripAxis = "LGrip";
		
	}
	
	// Update is called once per frame
    protected override void Update () {
        base.Update();

	}

    public override void OnTriggerDown()
    {
        //change line colour
        rayLine.startColor = Color.blue;
        rayLine.endColor = Color.blue;
    }

    public override void OnTriggerHold()
    {
        //turn on rayline and draw
        rayLine.enabled = true;
        DrawLine();
    }

    public override void OnTriggerUp()
    {
        //reset colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;

        //turn off rayline
        rayLine.enabled = false;

        //Teleport Player on left trigger up. Calls Teleport method attached to Main Camera Script
        //Sends rayLine field from BaseController base class to find position to teleport
        Camera.main.GetComponent<BigPlayerTeleport>().Teleport(this.gameObject.transform.forward);
    }

	public override void OnGripDown() {}
	public override void OnGripHold() {}
	public override void OnGripUp() {}

}
