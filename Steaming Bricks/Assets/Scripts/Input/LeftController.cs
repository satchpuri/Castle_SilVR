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
    }

    public override void OnTriggerUp()
    {
        //reset colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;

        //Teleport Player on left trigger up. Calls Teleport method attached to Main Camera Script
        //Sends rayLine field from BaseController base class to find position to teleport
        Camera.main.GetComponent<BigPlayerTeleport>().Teleport(rayLine);
    }
}
