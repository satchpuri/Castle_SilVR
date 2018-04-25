using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class GameManager : Singleton<GameManager>
{
    //references to movable objects, hands, and player
    public GameObject player;

    //Object with tag "Movable"
    public GameObject[] movableObjects;

    //Object with tag "Sliding"
    public GameObject[] slidingObject;

    //Object with tag "Guard"
    public GameObject[] guards;

    //Object with tag "Coin"
    public int coins_remaining;
    
    //hands
    public GameObject leftHand;
    public GameObject rightHand;

    // Use this for initialization
    void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        movableObjects = GameObject.FindGameObjectsWithTag("Movable");
        slidingObject = GameObject.FindGameObjectsWithTag("Sliding");
        /*
        foreach (GameObject child in movableObjects)
        {
            child.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
        }

        foreach (GameObject child in slidingObject)
        {
            child.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
        }
        */
        guards = GameObject.FindGameObjectsWithTag("Distract");
        coins_remaining = GameObject.FindGameObjectsWithTag("Coin").Length; //wasnt working so I made it manually set in inspector
        player = GameObject.FindGameObjectWithTag("Player");
		GameObject.Find ("Land").GetComponent<LevelRaise> ().LoadHeight (GameObject.Find ("DataSaver").GetComponent<PersistObject> ().height);
    }
       
    void OnDisable()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    // Update is called once per frame
    void Update()
    {

    }



}
