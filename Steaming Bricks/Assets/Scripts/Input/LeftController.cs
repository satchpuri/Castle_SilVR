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
        triggerAxis = ""; // NOT SET
		
	}
	
	// Update is called once per frame
    protected override void Update () {
        base.Update();
	}

    public override void OnTriggerDown()
    {
    }

    public override void OnTriggerHold()
    {
    }

    public override void OnTriggerUp()
    {
    }
}
