using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cannon : MonoBehaviour {

    public GameObject projectile;
    public float shootForce = 500.0f;

	// Use this for initialization
	void Start () {

		
	}
	
	// Update is called once per frame
	void Update () {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            GameObject cannonball = (GameObject)Instantiate(
                projectile, transform.position, transform.rotation);
            projectile.GetComponent<Rigidbody>().AddForce(cannonball.transform.forward * shootForce);
        }
		
	}
}
