using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

//this script should go on the vision cone itself

public class GuardVision : MonoBehaviour {
    private GameObject target;

    [SerializeField]
    private float visionAngle;
    [SerializeField]
    private float visionDistance;

    [SerializeField] private GameObject hudIsland;

    private LineRenderer line;


    // Use this for initialization
    void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        target = GameObject.Find("Player"); //GameObject.FindGameObjectWithTag("Player");
        hudIsland = GameObject.Find("HUD Island");
    }

    void OnDisable()
    {
        target = null;
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

	// Use this for initialization
	void Start () {
        line = this.gameObject.GetComponent<LineRenderer>();
        hudIsland.SetActive(false);
		
	}
	
	// Update is called once per frame
	void Update () {
        if (VisionCone())
        {
            hudIsland.SetActive(true);
            //SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
		
	}

    /// <summary>
    /// responsible for detecting the player based on
    /// the cone of vision and checking 
    /// </summary>
    private bool VisionCone()
    {
        Vector3 player = new Vector3(target.transform.position.x, target.transform.position.y + target.GetComponent<CapsuleCollider>().bounds.size.y/2, target.transform.position.z);
        Vector3 direction = player - this.transform.position;

        float angle = Vector3.Angle(direction, transform.forward);

        //Debug.Log(angle);

        //Debug.DrawLine(transform.position, transform.position + transform.forward.normalized * 1.5f);
        //Debug.DrawLine(transform.position, transform.position + Quaternion.AngleAxis(visionAngle, transform.up) * transform.forward * visionDistance);
        //Debug.DrawLine(transform.position, transform.position + Quaternion.AngleAxis(-visionAngle, transform.up) * transform.forward * visionDistance);

        //draw a line faking out this
        Ray left = new Ray(transform.position, Quaternion.AngleAxis(visionAngle, transform.up) * transform.forward * visionDistance); //ray itself

        RaycastHit hitpoint; //where we save hit data for walls
        Physics.Raycast(left, out hitpoint, visionDistance); //use raycast to get hit point

        //start point
        line.SetPosition(0, left.origin);

        //check if we hit anything - wont draw to endpoint if hit is null
        if (hitpoint.distance == 0)
        {
            //draw line to fully length
            line.SetPosition(1, left.GetPoint(visionDistance));
        }
        else
        {
            //use raycasts hit point to draw the line to whatever its hitting
            line.SetPosition(1, left.GetPoint(hitpoint.distance));
        }



        //same thing but for the right
        Ray right = new Ray(transform.position, Quaternion.AngleAxis(-visionAngle, transform.up) * transform.forward * visionDistance);
        Physics.Raycast(right, out hitpoint, visionDistance); //use raycast to get hit point

        //check if we hit anything - wont draw to endpoint if hit is null
        line.SetPosition(2, right.origin);
        if (hitpoint.distance == 0)
        {
            //draw line to fully length
            line.SetPosition(3, right.GetPoint(visionDistance));
        }
        else
        {
            //use raycasts hit point to draw the line to whatever its hitting
            line.SetPosition(3, right.GetPoint(hitpoint.distance));
        }


        if (angle > visionAngle)
        {
            return false;
        }
        else
        {
            RaycastHit hit;

            Physics.Raycast(transform.position, direction, out hit);

            Debug.LogWarning(hit.transform.gameObject.name);

            if (hit.transform.gameObject == target && target.layer != 10 && direction.magnitude <= visionDistance)
            {

                return true;
            }
            else
            {

                return false;
            }
        }
    }

    /*for colliding with player
    void OnTriggerEnter(Collider other)
    {
        //on collision with player, reload scene
        if (other.tag == "Player")
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }*/
}
