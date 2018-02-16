using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class MoveController : MonoBehaviour {

    [SerializeField] private GameObject leftHand;
    [SerializeField] private GameObject rightHand;

    // Use this for initialization
    void Start () {

    }

    // Update is called once per frame
    void Update () {
        //RIGHT HAND
        //get pos and rot
        Vector3 rightPosition = InputTracking.GetLocalPosition(XRNode.RightHand);
        Quaternion rightRotation = InputTracking.GetLocalRotation(XRNode.RightHand);

        //set pos and rot
        rightHand.transform.position = rightPosition;
        rightHand.transform.rotation = rightRotation;

        //LEFT HAND
        //get pos and rot
        Vector3 leftPosition = InputTracking.GetLocalPosition(XRNode.LeftHand);
        Quaternion leftRotation = InputTracking.GetLocalRotation(XRNode.LeftHand);

        //set pos and rot
        leftHand.transform.position = leftPosition;
        leftHand.transform.rotation = leftRotation;

    }

}