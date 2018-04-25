using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;
using UnityEngine.XR;

public class LevelRaise : MonoBehaviour {

	Vector3 prevPos;
	Vector3 curPos;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}

	public void Move(GameObject hand) {

		UpdatePosition (hand); 

		//move the object with the controller
		gameObject.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y + (curPos.y-prevPos.y), gameObject.transform.position.z);

		GameObject.Find ("DataSaver").GetComponent<PersistObject> ().height = gameObject.transform.position.y;
	}

	private void UpdatePosition(GameObject hand) {
		if (prevPos != Vector3.zero) { //stop weirdness from default vectors
			prevPos = curPos;
		} else {
			prevPos = hand.transform.position;
		}
		curPos = hand.transform.position;
	}

	//set vectors to default after use so they aren't hugely different
	public void ResetPos() {
		prevPos = Vector3.zero;
		curPos = Vector3.zero;
	}

	public void LoadHeight(float height) {
		transform.position = new Vector3 (transform.position.x, height, transform.position.z);
	}
}
