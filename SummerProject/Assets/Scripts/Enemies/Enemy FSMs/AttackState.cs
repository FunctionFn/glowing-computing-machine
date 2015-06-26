using UnityEngine;
using System.Collections;

public class AttackState : StateBasicEnemy {

    public override void Enter(BasicEnemy entity)
    {
        Debug.Log("Entering Attack");
    }

    public override void Execute(BasicEnemy entity)
    {
        Debug.Log("Attacking");
        
        
    }

    public override void Exit(BasicEnemy entity)
    {
        Debug.Log("Exiting Attack");
    }
}
