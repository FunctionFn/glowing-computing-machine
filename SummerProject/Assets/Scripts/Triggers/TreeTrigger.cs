using UnityEngine;
using System.Collections;

public class TreeTrigger : Trigger {

    public override void OnActivate()
    {
        base.OnActivate();

        PlayerController.Inst.SetNearTree(true);
    }

    public override void OnDeactivate()
    {
        base.OnDeactivate();

        PlayerController.Inst.SetNearTree(false);
        PlayerController.Inst.ChangeMovementState(PlayerController.Inst.GroundedMovement);
    }


}
