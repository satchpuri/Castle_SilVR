using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Billboard : MonoBehaviour {

	// Use this for initialization
	void Start () {
        //hide initally
        this.gameObject.SetActive(false);		
	}
	
	// Update is called once per frame
	void Update () {

		//check if tiny terry is close


        //turn to face the player
		//this.gameObject.transform.LookAt(Camera.main.transform,Vector3.up);
		transform.rotation = Quaternion.LookRotation (Camera.main.transform.position, transform.parent.transform.up);

	}

	private void CheckActivate() {

		if (!gameObject.activeSelf && ((GameObject.Find ("Player").transform.position - transform.position).magnitude < .01f)) {

			gameObject.SetActive (true);
		} else if (gameObject.activeSelf && ((GameObject.Find ("Player").transform.position - transform.position).magnitude >= .01f)) {

			gameObject.SetActive (false);
		}

	}
}
