using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EndDoor : MonoBehaviour {

    //temp Scene changing until we figure SceneManager issue out

    public int requiredGems;


	// Use this for initialization
	void Start () {
        
	}
	
	// Update is called once per frame
	void Update () {
		
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

                if (nextIndex > SceneManager.sceneCount)
                {
                    nextIndex = 0;
                }

                SceneManager.LoadScene(nextIndex);
            }
        }

        
    }
}
