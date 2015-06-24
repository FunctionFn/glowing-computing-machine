using UnityEngine;
using System.Collections;

public class Weakpoint : MonoBehaviour {

    public GameObject enemy;


    void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Fireball>())
        {
            enemy.GetComponent<Enemy>().Damage(PlayerController.Inst.fireballDamage);
            Destroy(other.gameObject);
        }
    }
}
