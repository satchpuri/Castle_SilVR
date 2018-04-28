using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlideArrowController : MonoBehaviour {

	private SpriteRenderer arrows;

	// Use this for initialization
	void Start () {

		arrows = transform.GetChild (0).GetComponent<SpriteRenderer> ();
		arrows.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

		if (transform.GetComponentInParent<MoveObject> ().activeSliding) {

			arrows.enabled = true;
		} else {

			arrows.enabled = false;
		}
	}
}
