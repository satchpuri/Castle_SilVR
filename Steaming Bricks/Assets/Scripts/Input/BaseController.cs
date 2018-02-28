using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public abstract class BaseController : MonoBehaviour {
    //hand fields
    protected XRNode handNode; //node for which hand should be either XRNode.RightHand or XRNode.LeftHand

    //ray cast fields
    protected LineRenderer rayLine; //visual of ray
    protected RaycastHit hit; //what the raycast hits
    protected Ray ray; //ray line itself
    [SerializeField] protected LayerMask rayLayer; //layer in which raycast interacts
    [SerializeField] protected float rayDistance; //distance raycast extends

    //trigger fields
    protected string triggerAxis; //axis name for trigger in use
    protected float trigger_lastFrame; //trigger state last frame
    protected float trigger_currentFrame; //trigger state current frame

	// Use this for initialization
	protected virtual void Start () {
        rayLine = this.gameObject.GetComponent<LineRenderer>(); //attach linerenderer to field
        rayLine.enabled = true; //make sure its on

        //set inital line colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;
		
	}
	
	// Update is called once per frame
	protected virtual void Update () {
        TrackMovement();
        DrawLine();
        Trigger();
	}

    /// <summary>
    /// Tracks the position and roation of nodes for hands amd applies them to ingame representation of each hand
    /// </summary>
    protected virtual void TrackMovement()
    {
        //get nodes pos and rot - apply to ingame representation fo hand
        this.gameObject.transform.position = InputTracking.GetLocalPosition(handNode);
        this.gameObject.transform.rotation = InputTracking.GetLocalRotation(handNode);
    }

    protected virtual void DrawLine()
    {
        //build raycast from desired hand
        ray = new Ray(this.gameObject.transform.position, this.gameObject.transform.forward);

        //draw line to vizualize raycast
        rayLine.SetPosition(0, ray.origin);
        rayLine.SetPosition(1, ray.GetPoint(rayDistance));
    }

    /// <summary>
    /// Runs proper trigger events (ie down hold and up) - 
    /// </summary>
    protected virtual void Trigger()
    {
        //update trigger frames checks
        trigger_lastFrame = trigger_currentFrame;
        trigger_currentFrame = Input.GetAxis(triggerAxis);

        //trigger pull checks
        if (trigger_lastFrame <= .1f && trigger_currentFrame > 0f) //trigger intial pull
        {
            //check if raycast hit anything we want
            if (Physics.Raycast(ray, out hit, rayDistance, rayLayer)) //check for valid raycast
            {
                OnTriggerDown();
            }
        }
        else if (trigger_lastFrame > 0f && trigger_currentFrame > 0f) //holding trigger
        {
            OnTriggerHold();
        }
        else  if (trigger_lastFrame >= .1f && trigger_currentFrame <= .1f) //let go of trigger
        {
            OnTriggerUp();
        }
    }

    /// <summary>
    /// The trigger down event.
    /// </summary>
    public abstract void OnTriggerDown();

    /// <summary>
    /// The trigger hold event.
    /// </summary>
    public abstract void OnTriggerHold();

    /// <summary>
    /// The trigger up event.
    /// </summary>
    public abstract void OnTriggerUp();
}
