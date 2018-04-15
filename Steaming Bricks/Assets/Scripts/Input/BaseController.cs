using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using cakeslice;

public abstract class BaseController : MonoBehaviour {
    //hand fields
    protected XRNode handNode; //node for which hand should be either XRNode.RightHand or XRNode.LeftHand
    protected Outline highlight;

    //ray cast fields
    protected LineRenderer rayLine; //visual of ray
    protected GameObject hit; //what the raycast hits
    protected Ray ray; //ray line itself
    [SerializeField] protected LayerMask rayLayer; //layer in which raycast interacts
    [SerializeField] protected float rayDistance; //distance raycast extends
    enum InteractMode {Grab, Raycast}; //default is physicla grab, raycast for long distance interactions
    private InteractMode interactMode ;

    //trigger fields
    protected string triggerAxis; //axis name for trigger in use
    protected float trigger_lastFrame; //trigger state last frame
    protected float trigger_currentFrame; //trigger state current frame

	// Use this for initialization
	protected virtual void Start () {
        rayLine = this.gameObject.GetComponent<LineRenderer>(); //attach linerenderer to field
        rayLine.enabled = true; //make sure its on

        //set inital interaction mode
        interactMode = InteractMode.Grab; //grab by default

        //set inital line colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;
		
	}
	
	// Update is called once per frame
	protected virtual void Update () {
        TrackMovement();
        Trigger();

        //draw ray if we are in raycast mode
        if (interactMode == InteractMode.Raycast)
        {
            DrawLine();
        }
	}
       
    //for staying within trigger type colliders
    void OnTriggerStay(Collider col)
    {
        //update which obj you are interacting with
        hit = col.gameObject;

        //check for valid interactable
        if (hit.GetComponent<Outline>() != null) //check it has an outline component
        {
            //highlight interactable obj
            hit.GetComponent<Outline>().enabled = true;
        }
        else
        {
            //not valid dont set it as hit
            hit = null;
        }

    }

    //for leaving trigger type colliders
    void OnTriggerExit(Collider col)
    {
        //check to see if we are leaving the currently slected object
        if (hit == col.gameObject)
        {
            //turn off highlight
            hit.GetComponent<Outline>().enabled = false;

            //clear interacting object
            hit = null;
        }

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
    /// Runs proper trigger controller events (ie down hold and up) - 
    /// </summary>
    protected virtual void Trigger()
    {
        //update trigger frames checks
        trigger_lastFrame = trigger_currentFrame;
        trigger_currentFrame = Input.GetAxis(triggerAxis);

        //trigger pull checks
        if (trigger_lastFrame <= .1f && trigger_currentFrame > 0f) //trigger intial pull
        {
            //check ineract mode and run TriggerDown accordingly
            switch (interactMode)
            {
                //Default mode is a physical grab- hit is set with trigger colliders
                case InteractMode.Grab:
                    if(hit != null) //we have a collision selected
                    {
                        OnTriggerDown();
                    }
                    break;

                //long distance mode is raycast- need to set ht with physics raycast
                case InteractMode.Raycast:
                    //turn on rayline
                    rayLine.enabled = true;

                    //check raycast and set hit
                    RaycastHit rayHit;
                    if(Physics.Raycast(ray, out rayHit, rayDistance, rayLayer))
                    {
                        //set hit
                        hit = rayHit.collider.gameObject;

                        //run on trigger down
                        OnTriggerDown();
                    }
                    break;
            }
           
        }
        else if (trigger_lastFrame > 0f && trigger_currentFrame > 0f) //holding trigger
        {
            OnTriggerHold();
        }
        else  if (trigger_lastFrame >= .1f && trigger_currentFrame <= .1f) //let go of trigger
        {
            //run trigger up function
            OnTriggerUp();

            //clean up raycast if we are in that mode
            if (interactMode == InteractMode.Raycast)
            {
                //clean up turning it off
                rayLine.enabled = false;
            }
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
