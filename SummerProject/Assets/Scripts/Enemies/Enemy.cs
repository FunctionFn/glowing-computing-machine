using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {

    public float health;
    public float damage;

    public void Damage(float dmg)
    {
        health -= dmg;
    }
    public virtual void KillEnemy()
    {
        Destroy(gameObject);
    }


    
}
