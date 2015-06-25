using UnityEngine;
using System.Collections;

public class Wind : MonoBehaviour {

    public LayerMask whatIsBlowable;

    public float windForce;

    public float windForceDistanceModifier; // higher modifier, the more Distance affects the power of the wind.

	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerStay(Collider other)
    {


        if (whatIsBlowable.value == (whatIsBlowable.value | (1 << other.gameObject.layer)))
        {
            other.GetComponent<Rigidbody>().AddForce(transform.forward * windForce * 
                // allow wind to get weaker as it gets farther from player
                ( 1 / (Vector3.Distance(other.transform.position, PlayerController.Inst.transform.position) * windForceDistanceModifier)));
        }

    }
}
