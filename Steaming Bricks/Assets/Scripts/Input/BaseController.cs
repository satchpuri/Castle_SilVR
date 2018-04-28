using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;
using UnityEngine.SceneManagement;
using cakeslice;
using UnityEngine.UI;

public abstract class BaseController : MonoBehaviour {
    //hand fields
    protected XRNode handNode; //node for which hand should be either XRNode.RightHand or XRNode.LeftHand

    //ray cast fields
    protected LineRenderer rayLine; //visual of ray
    protected GameObject hit; //what the raycast hits
    protected Ray ray; //ray line itself
    [SerializeField] protected LayerMask rayLayer; //layer in which raycast interacts
    [SerializeField] protected float rayDistance; //distance raycast extends

   // private GameObject menu;
    public MainMenu menu;

	public GameObject menuIsland;
    //highlight field
    protected int highlightIndex; //each hand will use a different highlight colour and thus a different highlight index

    //interaction type fields
    protected enum InteractMode {Grab, Raycast}; //default is physicla grab, raycast for long distance interactions
    protected InteractMode interactMode;
            
    //trigger fields
    protected string triggerAxis; //axis name for trigger in use
    protected float trigger_lastFrame; //trigger state last frame
    protected float trigger_currentFrame; //trigger state current frame

	protected string gripAxis;
	protected float grip_lastFrame;
	protected float grip_currentFrame;

    //interaction fields
    public bool grabbing; //are we holding an object
    protected bool sliding; //are we sliding an object
    protected bool raising; //are we in raise island mode

    private bool audioPlayed;

    RaycastHit rayHit;

    // Use this for initialization
    protected virtual void Start () {
        audioPlayed = false;
        rayLine = this.gameObject.GetComponent<LineRenderer>(); //attach linerenderer to field
        rayLine.enabled = false; //turn off line draying by default

        //set inital interaction mode
        interactMode = InteractMode.Grab; //grab by default

        //set inital line colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;

        //set fields for this specific hand
        grabbing = false;
        sliding = false;
        raising = false;

		

        //change interaction mode to raycast for main menu
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByBuildIndex(0)) //scene 0 should be main menu
        {
            //set mode to raycast- things are far away and we cant touch them
            interactMode = InteractMode.Raycast;
        }


		
	}
	
	// Update is called once per frame
	protected virtual void Update () {
        TrackMovement();
        Trigger();
		GripButton ();

		SelectButton ();
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
        if (col.gameObject.GetComponent<cakeslice.Outline>() != null && !sliding) //check it has an cakeslice.Outline component
        {
            
            if (hit != null)//check if no hit is set
            {
                //turn off highlight on old selected object
                hit.GetComponent<cakeslice.Outline>().enabled = false;
            }

            //update which obj you are interacting with
            hit = col.gameObject;
            hit.GetComponent<cakeslice.Outline>().color = highlightIndex; //set highlight index tot his hands
            hit.GetComponent<cakeslice.Outline>().enabled = true; //highlight
        }


    }

    //for leaving trigger type colliders
    void OnTriggerExit(Collider col)
    {
        //check to see if we are leaving the currently slected object
        if (hit == col.gameObject && !sliding)
        {
            //turn off highlight
            hit.GetComponent<cakeslice.Outline>().enabled = false;

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
            Color saveColour = Color.black;

            //switch color based on interactable type
            switch (hit.tag)
            {
                case "Movable":
                     saveColour = Color.green;
                    break;

                case "Sliding":
                    saveColour = Color.yellow;
                    break;

                case "Key":
                case "Door":
                    saveColour = Color.red;
                    break;

                case "HidingSpace":
                    saveColour = Color.magenta;
                    break;

                case "Coin":
                    saveColour = Color.cyan;
                    break;

                case "Distraction":
                    saveColour = Color.white;
                    break;
            }

            switch (highlightIndex)
            {
                case 1:
                    Camera.main.gameObject.GetComponent<cakeslice.OutlineEffect>().lineColor1 = saveColour;
                    break;
                case 2:
                    Camera.main.gameObject.GetComponent<cakeslice.OutlineEffect>().lineColor2 = saveColour;
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

	protected virtual void SelectButton() { //0 is off, 1 is left, 2 is right

		if (Input.GetButton("LSelectButton")) {
			OnSelectPress (1);
		} else if (Input.GetButton("RSelectButton")) {
			OnSelectPress (2);
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
            //check ineract mode and run TriggerDown accordingly
            switch (interactMode)
            {
                //Default mode is a physical grab- hit is set with trigger colliders
                case InteractMode.Grab:
                    if (hit != null) //we have a collision selected
                    {
                        OnTriggerHold();
                    }
                    break;

                //long distance mode is raycast- need to set ht with physics raycast
                case InteractMode.Raycast:
                    //turn on rayline
                    rayLine.enabled = true;

                    //check raycast and set hit
                  
                    if (Physics.Raycast(ray, out rayHit, rayDistance, rayLayer))
                    {
                        //set hit
                        hit = rayHit.collider.gameObject;

                        //run on trigger down
                        OnTriggerHold();
                    }
                   
                    break;
            }
            
        }
        else  if (trigger_lastFrame >= .1f && trigger_currentFrame <= .1f) //let go of trigger
        {
            switch (interactMode)
            {
                //Default mode is a physical grab- hit is set with trigger colliders
                case InteractMode.Grab:
                    if (hit != null) //we have a collision selected
                    {
                        OnTriggerUp();
                    }
                    break;

                //long distance mode is raycast- need to set ht with physics raycast
                case InteractMode.Raycast:
                    //turn on rayline
                    rayLine.enabled = true;

                    //check raycast and set hit
                    RaycastHit rayHit;
                    if (Physics.Raycast(ray, out rayHit, rayDistance, rayLayer))
                    {
                        //set hit
                        hit = rayHit.collider.gameObject;

                        //run on trigger down
                        OnTriggerUp();
                    }
                    break;
            }
            //run trigger up function


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
    protected virtual void OnTriggerDown()
    {

        //use only specific interactions for some levels- so check what scene we are on
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByBuildIndex(0)) //scene 0 should be main menu
        {
            //if (hit.tag == "Start")
            //{
            //    // menu = GameObject.Find("Main Menu");
            //    //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
            //    menu.Play();
           
            //}
            //else if (hit.tag == "Exit")
            //{
            //    Application.Quit();
            //}
        }
        else //all other scenes should use these
        {
            //disable other controls while in island mode
            if (!raising) {
                //check what kind of object we hit with the raycast and interact accordingly
                if (hit.tag == "Movable") {
                    //everything checks out- actually pickup the object
                    hit.GetComponent<MoveObject> ().PickUp (hit.transform, gameObject);
                    grabbing = true;
                    Debug.Log ("Grab");
                }

                if (hit.tag == "Key") {
                    //change line colour
                    rayLine.startColor = Color.blue;
                    rayLine.endColor = Color.blue;

                    hit.GetComponentInParent<DoorAndKey> ().CollectKey ();
                }
                if (hit.tag == "Door") {
                    //change line colour
                    rayLine.startColor = Color.blue;
                    rayLine.endColor = Color.blue;

                    Debug.Log ("Open Door");

                    hit.transform.GetComponent<DoorAndKey> ().OpenDoor ();
                }

                if (hit.tag == "HidingSpace") {
                    //chekc if we are hiding
                    if (!hit.GetComponent<HidingSpace> ().hidding) { //we are not
                        //hide
                        hit.GetComponent<HidingSpace> ().Hide ();
                    } else { //we are hiding
                        //stop hiding
                        hit.GetComponent<HidingSpace> ().StopHidding ();
                    }
                }
                if (hit.tag == "Sliding") {
                    //change line colour
                    rayLine.startColor = Color.yellow;
                    rayLine.endColor = Color.yellow;

                    //everything checks out- actually pickup the object
                    hit.GetComponent<MoveObject> ().PickUp (hit.transform, gameObject);
                    sliding = true;
                    Debug.Log ("Slide Grab");
                }
            }
        }

    }

    /// <summary>
    /// The trigger hold event.
    /// </summary>
    protected virtual void OnTriggerHold()
    {
        //check if we are grabbing
        if (grabbing)
        {
            //drag that bish by the hair
            hit.GetComponent<MoveObject>().Drag(hit.transform);
        }
        if (sliding)
        {
            //drag that bish by the hair
            hit.GetComponent<MoveObject>().Drag(hit.transform);
        }

        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByBuildIndex(0)) //scene 0 should be main menu
        {
            if (hit.tag == "Start")
            {
                if (!audioPlayed)
                {
                    SoundManager.Instance.PlaySfxOnce("select", 60);
                    audioPlayed = true;
                }
                GameObject exit = GameObject.FindGameObjectWithTag("Exit");
                exit.GetComponent<Image>().sprite = exit.GetComponent<Button>().spriteState.pressedSprite;

                GameObject credits = GameObject.FindGameObjectWithTag("Credits");
                credits.GetComponent<Image>().sprite = credits.GetComponent<Button>().spriteState.pressedSprite;

                GameObject back = GameObject.FindGameObjectWithTag("Back");
                back.GetComponent<Image>().sprite = back.GetComponent<Button>().spriteState.pressedSprite;

                hit.GetComponent<Image>().sprite = hit.GetComponent<Button>().spriteState.highlightedSprite;
            }
            else if (hit.tag == "Exit")
            {
                if (!audioPlayed)
                {
                    SoundManager.Instance.PlaySfxOnce("select", 60);
                    audioPlayed = true;
                }
                GameObject start = GameObject.FindGameObjectWithTag("Start");
                start.GetComponent<Image>().sprite = start.GetComponent<Button>().spriteState.pressedSprite;

                GameObject credits = GameObject.FindGameObjectWithTag("Credits");
                credits.GetComponent<Image>().sprite = credits.GetComponent<Button>().spriteState.pressedSprite;

                GameObject back = GameObject.FindGameObjectWithTag("Back");
                back.GetComponent<Image>().sprite = back.GetComponent<Button>().spriteState.pressedSprite;

                hit.GetComponent<Image>().sprite = hit.GetComponent<Button>().spriteState.highlightedSprite;
            }
            else if (hit.tag == "Credits")
            {
                if (!audioPlayed)
                {
                    SoundManager.Instance.PlaySfxOnce("select", 60);
                    audioPlayed = true;
                }
                GameObject start = GameObject.FindGameObjectWithTag("Start");
                start.GetComponent<Image>().sprite = start.GetComponent<Button>().spriteState.pressedSprite;

                GameObject exit = GameObject.FindGameObjectWithTag("Exit");
                exit.GetComponent<Image>().sprite = exit.GetComponent<Button>().spriteState.pressedSprite;

                GameObject back = GameObject.FindGameObjectWithTag("Back");
                back.GetComponent<Image>().sprite = back.GetComponent<Button>().spriteState.pressedSprite;

                hit.GetComponent<Image>().sprite = hit.GetComponent<Button>().spriteState.highlightedSprite;
            }

            else if(hit.tag == "Back")
            {
                if (!audioPlayed)
                {
                    SoundManager.Instance.PlaySfxOnce("select", 60);
                    audioPlayed = true;
                }
                GameObject start = GameObject.FindGameObjectWithTag("Start");
                start.GetComponent<Image>().sprite = start.GetComponent<Button>().spriteState.pressedSprite;

                GameObject exit = GameObject.FindGameObjectWithTag("Exit");
                exit.GetComponent<Image>().sprite = exit.GetComponent<Button>().spriteState.pressedSprite;

                GameObject credits = GameObject.FindGameObjectWithTag("Credits");
                credits.GetComponent<Image>().sprite = credits.GetComponent<Button>().spriteState.pressedSprite;

                hit.GetComponent<Image>().sprite = hit.GetComponent<Button>().spriteState.highlightedSprite;
            }
            
  
        }
    }

    /// <summary>
    /// The trigger up event.
    /// </summary>
    protected virtual void OnTriggerUp()
    {
        audioPlayed = false;
        //reset colour
        rayLine.startColor = Color.white;
        rayLine.endColor = Color.white;
        //use only specific interactions for some levels- so check what scene we are on
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByBuildIndex(0)) //scene 0 should be main menu
        {
            if (hit.tag == "Start")
            {
                
                hit.GetComponentInParent<MainMenu>().Play();                  
            }
            else if (hit.tag == "Exit")
            {
                hit.GetComponentInParent<MainMenu>().Quit();
            }
            else if (hit.tag == "Credits")
            {
               
                Vector3 pos;
                GameObject creditsCanvas = GameObject.FindGameObjectWithTag("CreditsCanvas");
                pos = creditsCanvas.transform.position;

                creditsCanvas.transform.position =  hit.GetComponentInParent<MainMenu>().gameObject.transform.position;

                hit.GetComponentInParent<MainMenu>().gameObject.transform.position = pos;

               
            }
            else if (hit.tag == "Back")
            {
                Vector3 pos;
                GameObject menu = GameObject.FindGameObjectWithTag("Main Menu");
                pos = menu.transform.position;

                menu.transform.position = GameObject.FindGameObjectWithTag("CreditsCanvas").gameObject.transform.position;

                GameObject.FindGameObjectWithTag("CreditsCanvas").gameObject.transform.position = pos;
                
               
            }
        }
        //check if we are grabbing
        if (grabbing)
        {
            Debug.Log("Drop");
            //drop object
            hit.GetComponent<MoveObject>().Drop();

            //notify that we let go
            grabbing = false;
        }

        if (sliding)
        {
            Debug.Log("Slide Drop");
            //drop object
            hit.GetComponent<MoveObject>().Drop();

            //notify that we stopped sliding
            sliding = false;
        }
    }

	/// <summary>
	/// The grip down event.
	/// </summary>
	protected virtual void OnGripDown() {

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

	/// <summary>
	/// The grip hold event.
	/// </summary>
	protected virtual void OnGripHold() {

		if (raising) {

			Debug.Log ("holding trigger");
			GameObject.Find ("Land").GetComponent<LevelRaise> ().Move (gameObject);
		}
	}

	/// <summary>
	/// the grip up event.
	/// </summary>
	protected virtual void OnGripUp() {

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

	protected abstract void OnSelectPress (int handMarker);
}
