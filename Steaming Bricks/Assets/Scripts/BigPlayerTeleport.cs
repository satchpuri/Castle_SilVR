using UnityEngine;
using System.Collections;

public class BigPlayerTeleport : MonoBehaviour
{
    [SerializeField] private GameObject cam;
    // Use this for initialization
    void Start()
    {
        cam = this.gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetMouseButtonUp(1))
        {
            //cam.transform.position += new Vector3(10,0,10);
        }
    }
    
    // VR TELEPORT CONTROLS ===================================
    public void Teleport(LineRenderer hand_rayLine)
    {
        Vector3 teleport_to = hand_rayLine.GetPosition(1);
        cam.transform.position = new Vector3(teleport_to.x, cam.transform.position.y, teleport_to.z);
    }
}
