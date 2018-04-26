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

        highlightIndex = 2;
		
	}
	
	// Update is called once per frame
    protected override void Update () {
        base.Update();

	}

    protected override void OnTriggerDown()
    {
        base.OnTriggerDown();
    }

    protected override void OnTriggerHold()
    {
        base.OnTriggerHold();
    }

    protected override void OnTriggerUp()
    {
        base.OnTriggerUp();
    }

	public override void OnGripDown() {}
	public override void OnGripHold() {}
	public override void OnGripUp() {}

}
