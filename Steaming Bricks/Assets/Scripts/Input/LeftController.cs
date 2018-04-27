using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using UnityEngine.SceneManagement;

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

	protected override void OnGripDown() {

		base.OnGripDown ();		
	}

	protected override void OnGripHold() {

		base.OnGripHold ();

	}
	protected override void OnGripUp() {

		base.OnGripUp ();
	}

	protected override void OnSelectPress(int handMarker) { //1 is left, 2 is right

		if (handMarker == 1) {

            SceneManager.LoadScene(0);
		}
	}

}
