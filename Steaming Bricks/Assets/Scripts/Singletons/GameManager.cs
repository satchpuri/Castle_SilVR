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
    public int number_of_coins;

    //hands
    public GameObject leftHand;
    public GameObject rightHand;

    //NavMesh
    [SerializeField] private NavMeshSurface ground;

    // Use this for initialization
    void Start()
    {
        movableObjects = GameObject.FindGameObjectsWithTag("Movable");
        slidingObject = GameObject.FindGameObjectsWithTag("Sliding");
        guards = GameObject.FindGameObjectsWithTag("Guard");
        number_of_coins = GameObject.FindGameObjectsWithTag("Coin").Length;
        player = GameObject.FindGameObjectWithTag("Player");

        ground = GameObject.FindGameObjectWithTag("NavGround").GetComponent<NavMeshSurface>();
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void UpdateNavMesh()
    {
        ground.BuildNavMesh();
    }
}
