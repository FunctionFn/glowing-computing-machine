using UnityEngine;
using System.Collections;

public class FSMBasicEnemy {

    public BasicEnemy entity;
    public StateBasicEnemy currentState;


    public FSMBasicEnemy( BasicEnemy ent ) {
        this.entity = ent;
        
    }

    public void Update()
    {
        if (currentState != null)
        {
            currentState.Execute(entity);
        }
        else
        {
            ChangeState(IdleState.Inst);
        }
    }

    public void ChangeState(StateBasicEnemy newState)
    {
        // Problem here, no idea what it is. entity is clearly not NULL, but Unity is complaining that it is.

        if(currentState != null)
            currentState.Exit(entity);
        currentState = newState;
        currentState.Enter(entity);
        currentState.Execute(entity);
    }
}
