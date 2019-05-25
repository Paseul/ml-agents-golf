using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class randomWind : MonoBehaviour {

	List<Rigidbody> RigidbodyInWindzone = new List<Rigidbody> ();

	Vector3 windDir;
	float windForce;
	Rigidbody rBody;

	private void OnTriggerEnter(Collider other)
	{
		Rigidbody objectRigid = other.gameObject.GetComponent<Rigidbody> ();
		if (objectRigid != null)
			RigidbodyInWindzone.Add (objectRigid);

		windDir = new Vector3 (Random.Range (-1.0f, 1.0f), Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f));
		windForce = Random.Range (-1.0f, 1.0f);
	}

	private void OnTriggerExit(Collider other)
	{
		Rigidbody objectRigid = other.gameObject.GetComponent<Rigidbody> ();
		if (objectRigid != null)
			RigidbodyInWindzone.Remove (objectRigid);
	}

	private void FixedUpdate()
	{
		if (RigidbodyInWindzone.Count > 0) 
		{
			foreach (Rigidbody rigid in RigidbodyInWindzone) 
			{
				rigid.AddForce (windDir * windForce);
				Debug.Log (windDir.ToString());
			}
		}
	}
}
