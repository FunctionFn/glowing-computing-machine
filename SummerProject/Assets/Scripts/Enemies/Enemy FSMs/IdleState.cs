using UnityEngine;
using System.Collections;

public class IdleState : StateBasicEnemy {

    //singleton pattern
    private static IdleState _inst;
    public static IdleState Inst { get { return _inst; } }

    void Awake()
    {
        _inst = this;
    }


    public override void Enter(BasicEnemy entity)
    {
        Debug.Log("Entering Idle");
    }

    public override void Execute(BasicEnemy entity)
    {
        Debug.Log("Idleing");
        Debug.Log("Changing state to attacking");
        entity.fsm.ChangeState(IdleState._inst);
    }

    public override void Exit(BasicEnemy entity)
    {
        Debug.Log("Exiting Idle");
    }
}
