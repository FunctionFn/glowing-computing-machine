using UnityEngine;
using System.Collections;

public class BasicEnemy : Enemy
{
    void Update()
    {
        if (health <= 0)
        {
            KillEnemy();
        }
    }

    

}
