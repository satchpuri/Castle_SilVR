using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DevCamMovement : MonoBehaviour
{

    [SerializeField] private GameObject cam;
    [SerializeField] private float speed;
    [SerializeField] private float rotSpeed;
    [SerializeField] bool devControls;
    [SerializeField] bool isVR;
    
    private float yaw;
    private float pitch;

    // Use this for initialization
    void Start()
    {
        cam = this.gameObject;
        pitch = transform.eulerAngles.x;
        yaw = transform.eulerAngles.y;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyUp(KeyCode.O))
        {
            devControls = !devControls;
        }

        //chekc for dev or MR controls
        if (devControls)
        {
            if (!isVR)
            {
                //dev is keyboard
                MovePlayer();
            }
            else
            {
                //MR Controls
                MovePlayerStick();
            }
        }
    }

    // uses arrow keys to shift the GameObject identified as "Player" by the speed.
    void MovePlayer()
    {
        Vector3 current = cam.transform.position;
        if (Input.GetKey(KeyCode.L))
        {
            current += new Vector3(speed, 0, 0);
        }
        if (Input.GetKey(KeyCode.J))
        {
            current += new Vector3(-speed, 0, 0);
        }
        if (Input.GetKey(KeyCode.K))
        {
            current += new Vector3(0, 0, -speed);
        }
        if (Input.GetKey(KeyCode.I))
        {
            current += new Vector3(0, 0, speed);
        }
        cam.transform.position = current;

        //Rotate Camera
        yaw += rotSpeed * Input.GetAxis("Mouse X");
        pitch -= rotSpeed * Input.GetAxis("Mouse Y");
        transform.eulerAngles = new Vector3(pitch, yaw, 0.0f);

        
    }

    //Theoretically uses an axis to move by an amount relative to the amount of stick motion.
    void MovePlayerStick()
    {
        //current pos
        Vector3 current = cam.transform.position;

        //get x and z
        float xAxis = Input.GetAxis("LStick_Horizontal");
        float zAxis = Input.GetAxis("LStick_Vertical");

        //update pos
        current -= new Vector3(speed * xAxis, 0, speed * zAxis);
        cam.transform.position = current;
    }

}
