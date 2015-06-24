using UnityEngine;
using System.Collections;

public class Fireball : MonoBehaviour {

    public LayerMask whatIsSolid;

	void Start () {
	
	}

    void OnTriggerEnter(Collider other)
    {
        
        
        if (whatIsSolid.value == (whatIsSolid.value | (1 << other.gameObject.layer)))
        {
            Destroy(gameObject);
        }
        
    }
}
