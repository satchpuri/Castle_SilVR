using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

	GameObject player;
	private float speed;

	// Use this for initialization
	void Start () {
		
		player = GameObject.Find ("Player");

		speed = 0.1f;
	}
	
	// Update is called once per frame
	void Update () {
		MovePlayer ();
	}

	// uses arrow keys to shift the GameObject identified as "Player" by the speed.
	void MovePlayer() {
		Vector3 current = player.transform.position;
		if (Input.GetKey(KeyCode.RightArrow)) {
			current += new Vector3 (speed, 0, 0);
		}
		if (Input.GetKey(KeyCode.LeftArrow)) {
			current += new Vector3 (-speed, 0, 0);
		}
		if (Input.GetKey(KeyCode.DownArrow)) {
			current += new Vector3 (0, 0, -speed);
		}
		if (Input.GetKey(KeyCode.UpArrow)) {
			current += new Vector3 (0, 0, speed);
		}
		player.transform.position = current;
	}

	/* Theoretically uses an axis to move by an amount relative to the amount of stick motion.
	void MovePlayerStick() {
		Vector3 current = player.transform.position;
		if (Input.GetAxis(?x?)) {
			current += new Vector3 (speed * Input.GetAxis(x), 0, 0);
		}
		if (Input.GetAxis(?y?)) {
			current += new Vector3 (0, 0, speed * Input.GetAxis(y));
		}
		player.transform.position = current;
	}
	*/
}