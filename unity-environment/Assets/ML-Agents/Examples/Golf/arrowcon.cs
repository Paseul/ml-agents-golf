using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class arrowcon : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKey ("a")) 
		{
			transform.Rotate (0, 0, 1);
		}

		if (Input.GetKey ("d")) 
		{
			transform.Rotate (0, 0, -1);
		}

		if (Input.GetKey ("w")) 
		{
			transform.Rotate (1, 0, 0);
		}

		if (Input.GetKey ("s")) 
		{
			transform.Rotate (-1, 0, 0);
		}

		if(Input.GetKeyDown("space"))
		{
			GetComponent<Transform>().eulerAngles = new Vector3(90, 0, 0);


		}
	}
}
