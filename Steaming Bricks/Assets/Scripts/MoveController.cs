using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class MoveController : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
        //get pos and rot
        Vector3 leftPosition = InputTracking.GetLocalPosition(XRNode.LeftHand);
        Quaternion leftRotation = InputTracking.GetLocalRotation(XRNode.LeftHand);
        
        //set pos and rot
        this.gameObject.transform.position = leftPosition;
        this.gameObject.transform.rotation = leftRotation;
		
	}
	
}