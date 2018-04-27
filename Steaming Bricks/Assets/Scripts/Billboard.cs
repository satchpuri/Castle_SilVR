using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Billboard : MonoBehaviour {

	public bool exception = false;

	// Use this for initialization
	void Start () {
        //hide initally
		this.gameObject.GetComponent<SpriteRenderer> ().enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

		//check if tiny terry is close
		CheckActivate();

        //turn to face the player
		if (GetComponent<SpriteRenderer> ().enabled) {

			Transform lookPos = Camera.main.transform;
			lookPos.position = new Vector3(lookPos.position.x, 0f, lookPos.position.z);
			gameObject.transform.LookAt (Camera.main.transform);
		}

	}

	private void CheckActivate() {
		
		if (!exception) {
			if (!gameObject.GetComponent<SpriteRenderer> ().enabled && ((GameObject.Find ("Player").transform.position - transform.position).magnitude < .1f)) {

				gameObject.GetComponent<SpriteRenderer> ().enabled = true;

			} else if (gameObject.GetComponent<SpriteRenderer> ().enabled && ((GameObject.Find ("Player").transform.position - transform.position).magnitude >= .1f)) {

				gameObject.GetComponent<SpriteRenderer> ().enabled = false;
			}
		}
	}
}
