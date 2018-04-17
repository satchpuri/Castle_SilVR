using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class GuardMovement : MonoBehaviour {

    //waypoints for guard to follow
    [SerializeField] private GameObject pathParent;
    public List<Transform> waypoints;
    //current waypoint they are seeking
    private int currWaypointNum;
    //movement speed
    public float speed;
    //vision cone
    private GameObject vision;
    //player
    private GameObject player;
    //check if guard is distracted
    public bool distracted = false;
    //timer for distraction
    [SerializeField] private int distract_time;
    private int distract_counter;

    // Use this for initialization
    void Start () {
        //if distract time is not set, set it to 5 seconds
        if (distract_time == 0) { distract_time = 5; }

        //build path from GO that hold spath nodes
        waypoints.AddRange(pathParent.GetComponentsInChildren<Transform>());
        waypoints.RemoveAt(0); //remove 0 index because GetComponentsInCHildren is inclusive of parent

        //start on waypoint 0
        currWaypointNum = 0;

        //get child vision object
        vision = this.gameObject.transform.GetChild(0).gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        if (!distracted && waypoints.Count > 0)
        {
            SeekPoint(waypoints[currWaypointNum]);
        }
        else if(Time.time > distract_counter + distract_time)
        {
            distracted = false;
        }
	}

    private void BuildPath()
    {
        
    }

    //moves guard towards current waypoint, updates current waypoint
   private void SeekPoint(Transform waypointLoc)
    {
        //move towards point
        float step = speed * Time.deltaTime;
        transform.position = Vector3.MoveTowards(transform.position, waypointLoc.position, step);

        //turn to face point, movement is somewhat unnatural, may need to be edited later
        var targetPoint = waypointLoc.transform.position;
        var targetRotation = Quaternion.LookRotation(targetPoint - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * 2.0f);

        //calculate distance to waypoint
        float dist = Vector3.Distance(this.transform.position, waypointLoc.transform.position);

        //if it reaches the location, cycle to the next waypoint
        if (dist < .01f)
        {
            currWaypointNum += 1;
            if(currWaypointNum >= waypoints.Count)
            {
                currWaypointNum = 0;
            }
        }
    }

    //Guard gets distracted
    public void SetDistracted(Transform distraction)
    {
        distract_counter = (int)Time.time;
        distracted = true;
        transform.LookAt(distraction);
    }

}
