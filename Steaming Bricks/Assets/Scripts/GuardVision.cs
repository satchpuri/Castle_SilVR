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


    // Use this for initialization
    void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        target = GameObject.FindGameObjectWithTag("Player");
    }

    void OnDisable()
    {
        target = null;
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (VisionCone())
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
		
	}

    /// <summary>
    /// responsible for detecting the player based on
    /// the cone of vision and checking 
    /// </summary>
    private bool VisionCone()
    {
        Vector3 direction = target.transform.position - this.transform.position;

        float angle = Vector3.Angle(direction, transform.forward);

        //Debug.Log(angle);

        //Debug.DrawLine(transform.position, transform.position + transform.forward.normalized * 1.5f);
        Debug.DrawLine(transform.position, transform.position + Quaternion.AngleAxis(visionAngle, transform.up) * transform.forward * visionDistance);
        Debug.DrawLine(transform.position, transform.position + Quaternion.AngleAxis(-visionAngle, transform.up) * transform.forward * visionDistance);

        if (angle > visionAngle)
        {
            return false;
        }
        else
        {
            RaycastHit hit;

            Physics.Raycast(transform.position, direction, out hit);

            //Debug.Log(hit.transform.gameObject.name);

            if (hit.transform.gameObject == target && target.layer != 10)
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
