using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.WSA.Input;

public class PlayerMovement : MonoBehaviour
{

    [SerializeField] private GameObject player;
    [SerializeField] private float speed;
    public bool canMove;

    private Vector2 camRot;

    // Use this for initialization
    void Start()
    {

        player = this.gameObject;

        //Get Roatation (Radians) of the camera to alter player motion
        //We use Mathf.Sin and Mathf.Cos to alter player motion which takes Radians as input
        camRot = Mathf.Deg2Rad * Camera.main.transform.eulerAngles;
        //Debug.Log(camRot);

        canMove = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (canMove)
        {
            //dev is keyboard
            MovePlayer();

            //MR Controls
            MovePlayerStick();
        }
            

    }

    // uses arrow keys to shift the GameObject identified as "Player" by the speed.
    void MovePlayer()
    {
        //Update Roatation of the camera to alter player motion
        camRot.y = Mathf.Deg2Rad * Camera.main.transform.eulerAngles.y;

        //Moves player in camera's POV using Mathf.Sin and Mathf.Cos
        Vector3 current = player.transform.position;
        if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow))
        {
            current += new Vector3(speed * Mathf.Cos(camRot.y), 0, -speed * Mathf.Sin(camRot.y));
        }
        if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow))
        {
            current += new Vector3(-speed * Mathf.Cos(camRot.y), 0, speed * Mathf.Sin(camRot.y));
        }
        if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow))
        {
            current += new Vector3(-speed * Mathf.Sin(camRot.y), 0, -speed * Mathf.Cos(camRot.y));
        }
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow))
        {
            current += new Vector3(speed * Mathf.Sin(camRot.y), 0, speed * Mathf.Cos(camRot.y));
        }
        player.transform.position = current;
    }

    //Theoretically uses an axis to move by an amount relative to the amount of stick motion.
    void MovePlayerStick()
    {
        //current pos
        Vector3 current = player.transform.position;

        //get x and z
        float xAxis = Input.GetAxis("LStick_Horizontal");
        float zAxis = Input.GetAxis("LStick_Vertical");

        //update pos
        current -= new Vector3(speed * xAxis, 0, speed * zAxis);
        player.transform.position = current;
    }

}