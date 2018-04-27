using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class PopIn : MonoBehaviour {

	private bool active;
	public bool Active { get { return active; } }
    private Transform properSize;

	// Use this for initialization
	void Start () {
        properSize = this.gameObject.transform;
		//make object invisible on startup
		transform.localScale = Vector3.zero;

        transform.GetChild(0).gameObject.GetComponent<Billboard>().exception = true;
        transform.GetChild(1).gameObject.GetComponent<Billboard>().exception = true;
        transform.GetChild(0).gameObject.GetComponent<SpriteRenderer>().enabled = true;
        transform.GetChild(1).gameObject.GetComponent<SpriteRenderer>().enabled = true;

	}
	
	// Update is called once per frame
	void Update () {}

	//This should LERP or SLERP if there is time.
	public void Toggle() {

		if (active) {
			transform.localScale = Vector3.zero;
			active = false;
		} else if (!active) {
            transform.localScale = new Vector3 (.0005f, 0.0005f, 0.0005f);
			active = true;
		}
		
	}
}
