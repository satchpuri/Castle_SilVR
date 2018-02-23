using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GridManager : Singleton<GridManager>
{
    //FIELDS
    //will be filled with gameobjects, multiple spots can and will goto a single obj
    //public GameObject[,] grid;

	public GameObject floorPlane;

    //grid with custom nodes
    Node[,] grid;
    //for 3D
    //Node[,,] grid;

    //mask for node that are not free
    public LayerMask filledMask;
    //define the area 
    public Vector3 gridSize;
    //area of each node
    public float nodeRadius;

    public Vector3 worldBotLeft, worldTopRight;

    float nodeDiameter;

    int gridSizeX;
    int gridSizeY;
    //int gridSizeZ;

    //movable object pos
    public Transform curr_object;
    public List<Node> path;

    //Toggles visibility of the grid
    public bool gridIsVisible = false;

    //public int gridHeight;
    //public int gridWidth;

    protected GridManager() { }

    void Awake()
    {
        //dont touch me when we load a new scene
        DontDestroyOnLoad(this);
    }
    // Use this for initialization
    void Start () {
        //make grid
        //grid = new GameObject[gridHeight, gridWidth];

        //to find # of nodes in the grid
        nodeDiameter = nodeRadius * 2;
        gridSizeX = Mathf.RoundToInt(gridSize.x / nodeDiameter);
        gridSizeY = Mathf.RoundToInt(gridSize.y / nodeDiameter);
        //gridSizeZ = Mathf.RoundToInt(gridSize.z / nodeDiameter);
        CreateGrid();
    }

    public void UpdateGrid()
    {
        foreach (Node n in grid)
        {
            n.free = !(Physics.CheckSphere(n.worldPosition, nodeRadius, filledMask)); 
        }
    }

    //Function to create grid
    public void CreateGrid()
    {
        grid = new Node[gridSizeX, gridSizeY];
        //left edge of the world

        //uncomment z for 3D
        worldBotLeft = transform.position - Vector3.right * gridSize.x / 2 - Vector3.forward * gridSize.y / 2;// - Vector3.up * gridSize.z / 2;
        worldTopRight = transform.position + Vector3.right * gridSize.x / 2 + Vector3.forward * gridSize.y / 2;// - Vector3.up * gridSize.z / 2;

        //x values
        for (int x = 0; x < gridSizeX; x++)
        {
            //y values
            for (int y = 0; y < gridSizeY; y++)
            {
                //z values
                //for (int z = 0; z < gridSizeZ; z++)
                //{
                    //increment by diameter until other end is met
                    Vector3 worldPoint = worldBotLeft + Vector3.right * (x * nodeDiameter + nodeRadius) + Vector3.forward * (y * nodeDiameter + nodeRadius);// + Vector3.up * (z * nodeDiameter + nodeRadius);
                    //check for collision with rock
                    bool free = !(Physics.CheckSphere(worldPoint, nodeRadius, filledMask));                    
                    //add to the grid
                    grid[x, y] = new Node(free, worldPoint);
                //}
            }

        }

    }

    public void OnDrawGizmos()
    {
        Gizmos.DrawWireCube(transform.position, new Vector3(gridSize.x, gridSize.z, gridSize.y));

        Node objectNode = null;
        if (curr_object != null)
        {
            objectNode = NodePoint(curr_object.position);
        }
        
        //draw grid
        if (grid != null)
        {           

            foreach (Node n in grid)
            {
                //if walkable then green, if not then red
                Gizmos.color = (n.free) ? Color.green : Color.red;
                //object color
                if(objectNode != null)
                    if (objectNode == n)
                    {
                        Gizmos.color = Color.blue;
                    }
                Gizmos.DrawCube(n.worldPosition, Vector3.one * (nodeDiameter - 10.000f));
            }
        }

    }

    //to get the objPos in the grid
    public Node NodePoint(Vector3 worldPos)
    {
        //to get how far along the grid is the node
        float percentX = (worldPos.x + gridSize.x / 2) / gridSize.x;
        float percentY = (worldPos.z + gridSize.y / 2) / gridSize.y;
        //(diameter) to get the current node, worldpOs.y gets the one above 
        //float percentZ = (worldPos.y - gridSize.z / (nodeRadius * 2)) / gridSize.z;

        //clamping to avoid going outside the bounds
        percentX = Mathf.Clamp01(percentX);
        percentY = Mathf.Clamp01(percentY);
        //percentZ = Mathf.Clamp01(percentZ);

        //get x y z idecies 
        //gridsize -1 because arrays are 0 based
        int x = Mathf.RoundToInt((gridSizeX - 1) * percentX);
        int y = Mathf.RoundToInt((gridSizeY - 1) * percentY);
        //int z = Mathf.RoundToInt((gridSizeZ - 1) * percentZ);

        //return grid pos
        return grid[x, y];
    }

    // Update is called once per frame
    void Update () {
		
	}
}
