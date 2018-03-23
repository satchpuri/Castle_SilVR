using UnityEngine;
using System.Collections;

public class BigPlayerTeleport : MonoBehaviour
{
    [SerializeField] private GameObject cam;
    [SerializeField] private GameObject world;
    [SerializeField] private GameObject player;
    [SerializeField] private int teleport_factor;
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
            cam.transform.position += new Vector3(10,0,10);
        }
    }
    
    // VR TELEPORT CONTROLS ===================================
    public void Teleport(Vector3 hand_forward)
    {
        //Vector3 teleport_to = hand_rayLine.GetPosition(1);
        hand_forward *= teleport_factor;
        Debug.Log(hand_forward);
        world.transform.position -= new Vector3(hand_forward.x, 0, hand_forward.z);
        player.transform.position -= new Vector3(hand_forward.x, 0, hand_forward.z);
    }
}
