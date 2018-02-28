using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class MoveController : MonoBehaviour {

    [SerializeField] private GameObject leftHand;
    [SerializeField] private GameObject rightHand;

    [SerializeField] private float scaler;
    [SerializeField] private float verticalDrop;

    private LineRenderer rayLine;
    private RaycastHit hit;
    private Ray ray;
    private bool grabbing;
    [SerializeField] private float grabDistance;

    private float rTrigger_lastFrame;
    private float rTrigger_currentFrame;

    // Use this for initialization
    void Start () {
        rayLine = this.gameObject.GetComponent<LineRenderer>(); //atach linredrerer to field
        rayLine.enabled = true; //make sure its on

        //set inital line colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;

        //set grabbing initally
        grabbing = false;

    }

    // Update is called once per frame
    void Update () {
        TrackMovement(); //track motion controllers and apply it to ingame hand objects
        DrawLine(rightHand);
        RightTrigger();
    }

    private void TrackMovement()
    {
        //RIGHT HAND
        //get pos and rot
        Vector3 rightPosition = InputTracking.GetLocalPosition(XRNode.RightHand);
        //rightPosition = new Vector3(rightPosition.x - 1.0f, rightPosition.y - 1.0f, rightPosition.z - 1.0f);
        rightPosition = rightPosition * scaler;
        rightPosition.y -= verticalDrop;

        Quaternion rightRotation = InputTracking.GetLocalRotation(XRNode.RightHand);

        //set pos and rot
        rightHand.transform.position = rightPosition;
        rightHand.transform.rotation = rightRotation;

        //LEFT HAND
        //get pos and rot
        Vector3 leftPosition = InputTracking.GetLocalPosition(XRNode.LeftHand);
        leftPosition = leftPosition * scaler;
        leftPosition.y -= verticalDrop;

        Quaternion leftRotation = InputTracking.GetLocalRotation(XRNode.LeftHand);

        //set pos and rot
        leftHand.transform.position = leftPosition;
        leftHand.transform.rotation = leftRotation;
    }

    private void DrawLine(GameObject hand)
    {
        //build raycast from desired hand
        ray = new Ray(hand.transform.position, hand.transform.forward);

        //draw line to vizualize raycast
        rayLine.SetPosition(0, ray.origin);
        rayLine.SetPosition(1, ray.GetPoint(grabDistance));
    }

    private void RightTrigger()
    {
        //update trigger frames checks
        rTrigger_lastFrame = rTrigger_currentFrame;
        rTrigger_currentFrame = Input.GetAxis("RTrigger");

        //trigger pull checks
        if (rTrigger_lastFrame <= .1f && rTrigger_currentFrame > 0f) //trigger intial pull
        {
            //change line colour
            rayLine.startColor = Color.green;
            rayLine.endColor = Color.green;

            //check if raycast hit anything we want
            if (Physics.Raycast(ray, out hit, grabDistance, GridManager.Instance.filledMask)) //check for valid raycast
            {
                Debug.Log("Hit " + hit.collider.gameObject.tag);
                if(hit.collider.gameObject.tag == "Movable") //the object is movable
                {
                    //everything checks out- actually pickup the object
                    hit.collider.gameObject.GetComponent<MoveObject>().PickUp(hit.transform);
                    grabbing = true;
                    Debug.Log("Grab");
                }
            }
        }
        else if (rTrigger_lastFrame > 0f && rTrigger_currentFrame > 0f) //holding trigger
        {
            //check if we are grabbing
            if (grabbing)
            {
                //drag that bish by the hair
                hit.collider.gameObject.GetComponent<MoveObject>().Drag(hit.transform);
            }

        }
        else  if (rTrigger_lastFrame >= .1f && rTrigger_currentFrame <= .1f) //let go of trigger
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

}