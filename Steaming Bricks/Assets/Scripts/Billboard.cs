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
		//this.gameObject.transform.LookAt(Camera.main.transform,Vector3.up);
		if (GetComponent<SpriteRenderer> ().enabled) {
			transform.rotation = Quaternion.LookRotation (Camera.main.transform.position, transform.parent.transform.up);
		}

	}

	private void CheckActivate() {
		
		if (!exception) {
			Debug.Log ("Got in the checker");
			if (!gameObject.GetComponent<SpriteRenderer> ().enabled && ((GameObject.Find ("Player").transform.position - transform.position).magnitude < .1f)) {

				Debug.Log ("Turning it on");
				gameObject.GetComponent<SpriteRenderer> ().enabled = true;

			} else if (gameObject.GetComponent<SpriteRenderer> ().enabled && ((GameObject.Find ("Player").transform.position - transform.position).magnitude >= .1f)) {

				Debug.Log ("Turning it Off");
				gameObject.GetComponent<SpriteRenderer> ().enabled = false;
			}
		}
	}
}
