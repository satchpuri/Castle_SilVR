using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PersistObject : MonoBehaviour {

	public static bool created;

	public float height;

	void Awake()
	{
		if (!created) {

			//dont touch me when we load a new scene
			DontDestroyOnLoad (this);
			created = true;
		}
	}

	// Use this for initialization
	void Start () {
		DontDestroyOnLoad (gameObject);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
