using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;

public class PlayerMovement : MonoBehaviour {

	[SerializeField] private GameObject player;
	[SerializeField] private float speed;
    [SerializeField] bool devControls;

	// Use this for initialization
	void Start () {
        
        player = this.gameObject;
	}
	
	// Update is called once per frame
	void Update () {
        //chekc for dev or MR controls
        if(devControls)
        {
            //dev is keyboard
            MovePlayer();
        }
        else
        {
            //MR Controls
            MovePlayerStick();
        }
		
	}

	// uses arrow keys to shift the GameObject identified as "Player" by the speed.
	void MovePlayer() {
		Vector3 current = player.transform.position;
        if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)) {
			current += new Vector3 (speed, 0, 0);
		}
        if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)) {
			current += new Vector3 (-speed, 0, 0);
		}
        if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow)) {
			current += new Vector3 (0, 0, -speed);
		}
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow)) {
			current += new Vector3 (0, 0, speed);
		}
		player.transform.position = current;
	}

	//Theoretically uses an axis to move by an amount relative to the amount of stick motion.
	void MovePlayerStick() {
        //current pos
		Vector3 current = player.transform.position;
        
        //get x and z
        float xAxis = Input.GetAxis("LStick_Horizontal");
        float zAxis = Input.GetAxis("LStick_Vertical");
        
        //update pos
        current -= new Vector3 (speed * xAxis, 0, speed * zAxis);
		player.transform.position = current;
	}
	
}