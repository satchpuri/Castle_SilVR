using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EndDoor : MonoBehaviour {

    //temp Scene changing until we figure SceneManager issue out

    public int requiredGems;


	// Use this for initialization
	void Start () {
		transform.GetChild (0).gameObject.GetComponent<Billboard> ().exception = true; //disable default behavior of the door icon
		transform.GetChild (0).gameObject.GetComponent<SpriteRenderer> ().enabled = false; //make the icon invisible by default


	}
	
	// Update is called once per frame
	void Update () {

		if (GameManager.Instance.coins_collected >= requiredGems)
			transform.GetChild (0).gameObject.GetComponent<SpriteRenderer> ().enabled = true; //make the icon visible
	}

    //trigger next scene when player enters door
    private void OnTriggerEnter(Collider other)
    {
        if(GameManager.Instance.coins_collected >= requiredGems)
        {
            if (other.gameObject.tag == "Player")
            {
                //get current scene index, add 1. Set back to 0 if it's at the end of the list
                int nextIndex = SceneManager.GetActiveScene().buildIndex + 1;


                if (nextIndex > SceneManager.sceneCountInBuildSettings)
                {
                    nextIndex = 0;
                }

                SceneManager.LoadScene(nextIndex);
            }
        }

        
    }
}
