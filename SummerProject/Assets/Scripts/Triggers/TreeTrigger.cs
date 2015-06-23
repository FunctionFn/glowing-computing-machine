using UnityEngine;
using System.Collections;

public class TreeTrigger : Trigger {

    public override void OnActivate()
    {
        base.OnActivate();

        PlayerController.Inst.ChangeMovementState(PlayerController.Inst.TetheredMovement);
    }

    public override void OnDeactivate()
    {
        base.OnDeactivate();

        PlayerController.Inst.ChangeMovementState(PlayerController.Inst.GroundedMovement);
    }


}
