using UnityEngine;
using System.Collections;

public abstract class StateBasicEnemy {

    public abstract void Enter(BasicEnemy entity);
    public abstract void Execute(BasicEnemy entity);
    public abstract void Exit(BasicEnemy entity);

}
