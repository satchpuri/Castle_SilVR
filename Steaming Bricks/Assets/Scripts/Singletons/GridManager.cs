using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GridManager : Singleton<GridManager>
{
    //FIELDS
    public GameObject[,] grid; //will be filled with gameobjects, multiple spots can and will goto a single obj
    public int gridHeight;
    public int gridWidth;

    protected GridManager() { }

    void Awake()
    {
        //dont touch me when we load a new scene
        DontDestroyOnLoad(this);
    }
    // Use this for initialization
    void Start () {
        //make grid
        grid = new GameObject[gridHeight, gridWidth];

    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
