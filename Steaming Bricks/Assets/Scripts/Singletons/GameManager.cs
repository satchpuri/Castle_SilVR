using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameManager : Singleton<GameManager>
{
    //references to movable objects, hands, and player

    public GameObject Player;
    //Object with tag "Movable"
    public GameObject[] Movable_Objects;
    //Object with tag "Sliding"
    public GameObject[] Sliding_Object;

    // Use this for initialization
    void Start()
    {
        Movable_Objects = GameObject.FindGameObjectsWithTag("Movable");
        Sliding_Object = GameObject.FindGameObjectsWithTag("Sliding");
    }

    // Update is called once per frame
    void Update()
    {

    }
}
