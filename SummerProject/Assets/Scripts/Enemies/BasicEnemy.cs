using UnityEngine;
using System.Collections;

public class BasicEnemy : Enemy
{

    public FSMBasicEnemy fsm;

    void Start()
    {
        //Initialize Finite State Machine
        fsm = new FSMBasicEnemy(this);
        Debug.Log("finished start");
    }


    void Update()
    {
        fsm.Update();

        if (health <= 0)
        {
            KillEnemy();
        }
    }

    

}
