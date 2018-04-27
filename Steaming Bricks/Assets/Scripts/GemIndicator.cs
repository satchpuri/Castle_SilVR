using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GemIndicator : MonoBehaviour {

	GameObject gem0; //lower middle
	GameObject gem1; //lower left
	GameObject gem2; //lower right
	GameObject gem3; //upper left
	GameObject gem4; //upper right

	GameObject[] gems;

	int activeGems;

	// Use this for initialization
	void Start () {

		gems = new GameObject[5];

		for (int i = 0; i < 5; i++) {

			gems [i] = transform.GetChild (i).gameObject;

			//gems[i].GetComponent<Billboard> ().exception = true;
			gems[i].GetComponent<SpriteRenderer> ().enabled = false;
		}

		for (int i = 0; i < GameManager.Instance.coins_remaining; i++) {
			gems [i].GetComponent<SpriteRenderer> ().enabled = true;
		}
	}
	
	// Update is called once per frame
	void Update () {

		Transform lookPos = Camera.main.transform;
		lookPos.position = new Vector3(lookPos.position.x, 0f, lookPos.position.z);
		gameObject.transform.LookAt (Camera.main.transform);
	}

	public void GemCollected() {

		activeGems++;

		gems [activeGems - 1].GetComponent<SpriteRenderer> ().color = new Color (0f, 238f, 209f, 255f);
	}
}
