using UnityEngine;
using System.Collections;

public class BasicEnemy : Enemy
{

    public FSMBasicEnemy fsm;

    public float attackTime;
    public float attackTimer;

    public bool bFinishedAttack;

    void Start()
    {
        //Initialize Finite State Machine
        fsm = new FSMBasicEnemy(this);
        Debug.Log("finished start");
    }


    void Update()
    {
        fsm.Update();

        attackTimer += Time.deltaTime;

        if (attackTimer >= attackTime)
        {
            bFinishedAttack = true;
        }


        if (health <= 0)
        {
            KillEnemy();
        }



    }


    public void Attack()
    {
        Debug.Log("attacking");
        attackTimer = 0;
    }

    public void Idle()
    {
        Debug.Log("idling");
    }

    public void Roar()
    {
        Debug.Log("Finished attacking, time to roar!");
    }

}
