using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using UnityEngine.SceneManagement;
using cakeslice;

public class RightController : BaseController {
    

	// Use this for initialization
	protected override void Start () {
        base.Start();

        //set varibles for specific hand from parent
        handNode = XRNode.RightHand;
        triggerAxis = "RTrigger";
		gripAxis = "RGrip";

        highlightIndex = 1;
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

	public override void OnGripDown() {
        
        //turn the normal hand off
        GetComponent<MeshRenderer> ().enabled = false;
        //turn the island on
        transform.GetChild (0).gameObject.GetComponent<PopIn> ().Toggle();
		transform.GetChild (0).gameObject.transform.GetChild (0).gameObject.SetActive(true);
		transform.GetChild (0).gameObject.transform.GetChild (1).gameObject.SetActive(true);

        //dont do level raising in the menus
        if (SceneManager.GetActiveScene() != SceneManager.GetSceneByBuildIndex(0)) //scene 0 should be main menu
        {
            //acknowledge we are in island mode
            raising = true;
        }
		
	}

	public override void OnGripHold() {

        if (raising) {

            Debug.Log ("holding trigger");
            GameObject.Find ("Land").GetComponent<LevelRaise> ().Move (gameObject);
        }

    }
	public override void OnGripUp() {

        if (raising) {

            GameObject.Find ("Land").GetComponent<LevelRaise> ().ResetPos ();

            //stop highlighting here
        }

        //turn the normal hand on
        GetComponent<MeshRenderer> ().enabled = true;
        //turn the island off
        transform.GetChild (0).gameObject.GetComponent<PopIn> ().Toggle();
		transform.GetChild (0).gameObject.transform.GetChild (0).gameObject.SetActive(false);
		transform.GetChild (0).gameObject.transform.GetChild (1).gameObject.SetActive(false);

        //end island mode
        raising = false;
    }
}
