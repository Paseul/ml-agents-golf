using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ballcontrol_wind : Agent {

	Rigidbody rBody;
	Vector3 initialPosition;

	public bool inWindZone = false;
	public GameObject windZone;
	Rigidbody rWind;
	public Vector3 windDir;
	public float windForce;
	public int compFlag;

	void Start () {
		rBody = GetComponent<Rigidbody>();
		rWind = GetComponent<Rigidbody>();

		initialPosition = gameObject.transform.position;		
		compFlag = 0;
		StartCoroutine (delayLoad ());
	}

	void Update () {

		if (Input.GetButtonDown ("Fire1")) {
			Done();
		}
	}

	public Transform Target;
	public override void AgentReset()
	{
		if (this.transform.position.y < -1.0f)
		{  
			// The agent fell
			this.rBody.angularVelocity = Vector3.zero;
			this.rBody.velocity = Vector3.zero;
			this.transform.position = initialPosition;
			transform.rotation = Quaternion.Euler (0, 0, 0);
			compFlag = 0;
			StartCoroutine (delayLoad ());

			windDir = new Vector3 (Random.Range (-1.0f, 1.0f), Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f));
			windForce = Random.Range (-0.2f, 0.2f);
		}
	}

	List<float> observation = new List<float>();
	public override void CollectObservations()
	{
		// Calculate relative position
		Vector3 relativePosition = Target.position - this.transform.position;

		// Relative position
		AddVectorObs(relativePosition.x/5);
		AddVectorObs(relativePosition.y/5);
		AddVectorObs(relativePosition.z/5);

		//	xPos.text = this.transform.position.y.ToString();

		// Distance to edges of platform
		AddVectorObs((this.transform.position.x + 5)/5);
		AddVectorObs((this.transform.position.x - 5)/5);
		AddVectorObs((this.transform.position.y + 5)/5);
		AddVectorObs((this.transform.position.y - 5)/5);
		AddVectorObs((this.transform.position.z + 5)/5);
		AddVectorObs((this.transform.position.z - 5)/5);

		// Agent velocity
		AddVectorObs(rBody.velocity.x/5);
		AddVectorObs(rBody.velocity.y/5);
		AddVectorObs(rBody.velocity.z/5);
	}
	public float speed = 2;
	private float previousDistance = float.MaxValue;

	public override void AgentAction(float[] vectorAction, string textAction)
	{

		// Rewards
		float distanceToTarget = Vector3.Distance(this.transform.position, 
			Target.position);

		// Reached target
		if (distanceToTarget < 1f)
		{
			Debug.Log ("Completed!");
			compFlag = 1;
			Done();
			AddReward(1.0f);
		}


		if ( this.transform.position.y < -1.0f)
		{
			Done();
			AddReward (0f);
			if (compFlag == 0) 
			{
				AddReward (-1.0f);
			}
		}

		// Time penalty
		AddReward(-0.05f);

		// Fell off platform

		previousDistance = distanceToTarget;

		// Actions, size = 2
		Vector3 controlSignal = Vector3.zero;
		controlSignal.x = Mathf.Clamp(vectorAction[0], -1, 1);
		controlSignal.y = Mathf.Clamp(vectorAction[1], -1, 1);
		controlSignal.z = Mathf.Clamp(vectorAction[2], -1, 1);
		if( distanceToTarget < 25f)
			rBody.AddForce(controlSignal * speed);
	}

	public Transform Ring;
	public Transform Wall;
	private void FixedUpdate()
	{
	//	rWind.AddForce(windDir * windForce);
		Debug.Log (windDir.ToString());
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.name == "ring") 
		{
			AddReward(0.25f);
		}
		if (other.name == "wall") 
		{
			AddReward(-1.0f);
		}
		if (other.name == "windArea") 
		{
			windZone = GetComponent<Collider>().gameObject;
			inWindZone = true;
			Debug.Log ("inWindArea");
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.name == "windArea") 
		{
			inWindZone = false;
		}
	}

	IEnumerator delayLoad()
	{
		yield return new WaitForSeconds (0);
		GetComponent<Rigidbody> ().AddRelativeForce (0, 1154, 1500); //(0, 645, 645);
	}
}
