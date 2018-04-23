using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using cakeslice;

public abstract class BaseController : MonoBehaviour {
    //hand fields
    protected XRNode handNode; //node for which hand should be either XRNode.RightHand or XRNode.LeftHand

    //ray cast fields
    protected LineRenderer rayLine; //visual of ray
    protected GameObject hit; //what the raycast hits
    protected Ray ray; //ray line itself
    [SerializeField] protected LayerMask rayLayer; //layer in which raycast interacts
    [SerializeField] protected float rayDistance; //distance raycast extends
    protected enum InteractMode {Grab, Raycast}; //default is physicla grab, raycast for long distance interactions
    protected InteractMode interactMode ;

    //trigger fields
    protected string triggerAxis; //axis name for trigger in use
    protected float trigger_lastFrame; //trigger state last frame
    protected float trigger_currentFrame; //trigger state current frame

	protected string gripAxis;
	protected float grip_lastFrame;
	protected float grip_currentFrame;

	// Use this for initialization
	protected virtual void Start () {
        rayLine = this.gameObject.GetComponent<LineRenderer>(); //attach linerenderer to field
        rayLine.enabled = false; //turn off line draying by default

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
		GripButton ();

        //draw ray if we are in raycast mode
        if (interactMode == InteractMode.Raycast)
        {
            DrawLine();
        }

        //update highlight around interactables
        UpdateHighlight();
	}
       
    //for staying within trigger type colliders
    void OnTriggerEnter(Collider col)
    {
        //check for valid interactable
        if (col.gameObject.GetComponent<Outline>() != null) //check it has an outline component
        {
            
            if (hit != null)//check if no hit is set
            {
                //turn off highlight on old selected object
                hit.GetComponent<Outline>().enabled = false;
            }

            //update which obj you are interacting with
            hit = col.gameObject;
            hit.GetComponent<Outline>().enabled = true; //highlight
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

    //chnages highlight color depending on which is selected
    private void UpdateHighlight()
    {
        //check if we haev something selected
        if (hit != null)
        {
            //switch color based on interactable type
            switch (hit.tag)
            {
                case "Movable":
                    Camera.main.gameObject.GetComponent<OutlineEffect>().lineColor1 = Color.green;
                    break;

                case "Sliding":
                    Camera.main.gameObject.GetComponent<OutlineEffect>().lineColor1 = Color.yellow;
                    break;

                case "Key":
                case "Door":
                    Camera.main.gameObject.GetComponent<OutlineEffect>().lineColor1 = Color.red;
                    break;

                case "HidingSpace":
                    Camera.main.gameObject.GetComponent<OutlineEffect>().lineColor1 = Color.magenta;
                    break;

                case "Coin":
                    Camera.main.gameObject.GetComponent<OutlineEffect>().lineColor1 = Color.cyan;
                    break;
            }
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

	protected virtual void GripButton() {

		//update grip frame checks
		grip_lastFrame = grip_currentFrame;
		grip_currentFrame = Input.GetAxis (gripAxis);

		//grip press checks
		if (grip_lastFrame == 0 && grip_currentFrame == 1) { //first press of button

			//run grip down function
			OnGripDown ();

		} else if (grip_lastFrame == 1 && grip_currentFrame == 1) { //holding button

			//run grip hold function
			OnGripHold ();

		} else if (grip_lastFrame == 1 && grip_currentFrame == 0) { //release of button

			//run grip up button
			OnGripUp ();
		}
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

	/// <summary>
	/// The grip down event.
	/// </summary>
	public abstract void OnGripDown();

	/// <summary>
	/// The grip hold event.
	/// </summary>
	public abstract void OnGripHold();

	/// <summary>
	/// the grip up event.
	/// </summary>
	public abstract void OnGripUp();
}
