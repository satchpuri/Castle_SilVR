using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerIndicator : MonoBehaviour {

	bool indicatorOn = false;

	Vector3 thisFramePos;
	Vector3 lastFramePos;

	float timeToIndicate = 10;

	float time;
	float moveTime = 0;

	GameObject indicator;

	// Use this for initialization
	void Start () {
		time = 0;
		indicator = transform.GetChild (0).gameObject;
		indicator.GetComponent<Billboard> ().exception = true;
	}
	
	// Update is called once per frame
	void Update () {

		lastFramePos = thisFramePos;
		thisFramePos = transform.position;

		if (!indicatorOn && lastFramePos == thisFramePos) {

			time += Time.deltaTime;

			if (time >= timeToIndicate) {
				
				ShowIndicator ();
			}
		} else if (indicatorOn && lastFramePos != thisFramePos) {

			time = 0;
			HideIndicator ();
		}

		if (indicatorOn && moveTime <= .1f) {

			moveTime += Time.deltaTime;

			indicator.transform.position = new Vector3 (transform.position.x, transform.position.y + (moveTime / 2), transform.position.z);
		}
	}

	private void ShowIndicator() {

		indicator.SetActive (true);
		indicator.GetComponent<SpriteRenderer> ().enabled = true;
		indicatorOn = true;
	}

	private void HideIndicator() {

		indicator.SetActive (false);
		indicator.GetComponent<SpriteRenderer> ().enabled = false;
		indicatorOn = false;
		moveTime = 0;
	}
}
