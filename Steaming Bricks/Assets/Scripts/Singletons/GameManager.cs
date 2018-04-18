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
    void OnEnabled()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        movableObjects = GameObject.FindGameObjectsWithTag("Movable");
        slidingObject = GameObject.FindGameObjectsWithTag("Sliding");
        guards = GameObject.FindGameObjectsWithTag("Guard");
        //coins_remaining = GameObject.FindGameObjectsWithTag("Coin").Length; //wasnt working so I made it manually set in inspector
        player = GameObject.FindGameObjectWithTag("Player");
    }
       
    void OnDisabled()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    // Update is called once per frame
    void Update()
    {

    }



}
