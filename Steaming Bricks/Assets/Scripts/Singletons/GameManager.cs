using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;

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
    void Start()
    {
        movableObjects = GameObject.FindGameObjectsWithTag("Movable");
        slidingObject = GameObject.FindGameObjectsWithTag("Sliding");
        guards = GameObject.FindGameObjectsWithTag("Guard");
        coins_remaining = GameObject.FindGameObjectsWithTag("Coin").Length;
        player = GameObject.FindGameObjectWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {

    }
}
