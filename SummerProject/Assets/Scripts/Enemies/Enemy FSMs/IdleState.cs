//using UnityEngine;
//using System.Collections;

public class IdleState : StateBasicEnemy {

   
   private static IdleState instance;

   public static IdleState getInstance()
   {
      {
         if (instance == null)
         {
             //Debug.Log("Got to instance fine");
             instance = new IdleState();
             //Debug.Log(instance);
            
         }
         return instance;
      }
   }

   

    // Singleton Pattern

    //private static IdleState instance = new IdleState();
    //public static IdleState getInstance { get { return instance; } }

    private IdleState()
    {

    }

    void StateBasicEnemy.Enter(BasicEnemy entity)
    {
        //Debug.Log("Entering Idle");
    }

    void StateBasicEnemy.Execute(BasicEnemy entity)
    {
        //Debug.Log("Idleing");
        //Debug.Log("Changing state to Idle");
        entity.Idle();
        entity.fsm.ChangeState(AttackState.getInstance);
    }

    void StateBasicEnemy.Exit(BasicEnemy entity)
    {
        //Debug.Log("Exiting Idle");
    }
}
