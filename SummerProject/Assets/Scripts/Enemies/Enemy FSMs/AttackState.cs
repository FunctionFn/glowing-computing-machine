//using UnityEngine;
//using System.Collections;

public class AttackState : StateBasicEnemy {

    /*
    //Here is a private reference only this class can access
    private static AttackState _instance;

    //This is the public reference that other classes will use
    public static AttackState Inst
    {
        get
        {
            //If _instance hasn't been set yet, we grab it from the scene!
            //This will only happen the first time this reference is used.
            if (_instance == null)
                _instance = new AttackState();
            return _instance;
        }
    }
    */

    private static AttackState instance = new AttackState();
    public static AttackState getInstance { get { return instance; } }

    void StateBasicEnemy.Enter(BasicEnemy entity)
    {
        entity.bFinishedAttack = false;
        entity.Attack();
    }

    void StateBasicEnemy.Execute(BasicEnemy entity)
    {
        if(entity.bFinishedAttack == true)
            entity.fsm.ChangeState(IdleState.getInstance());
    }

    void StateBasicEnemy.Exit(BasicEnemy entity)
    {
        //Debug.Log("Exiting Attack");
        entity.Roar();
    }
    
}
