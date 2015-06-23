using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public float speed;
    public float jumpSpeed;
    public float ascendSpeed;
    public float descendSpeed;
    public float gravity;

    public float lookSpeedH;
    public float lookSpeedV;
    private Vector3 moveDirection = Vector3.zero;
    private Vector3 lookDirectionH = Vector3.zero;
    private float lookDirectionV;
    CharacterController controller;

    public GameObject mainCamera;
    public Transform rightSide;

    private Vector3 cameraRotationAxis;

    //*State Management*

    //Movement States

    public int NoMovement = 0;
    public int GroundedMovement = 1;
    public int TetheredMovement = 2;

    public int movementState;

    // Singleton Pattern

    private static PlayerController _inst;
    public static PlayerController Inst { get { return _inst; } }

    void Awake()
    {
        _inst = this;
    }


	// Use this for initialization
	void Start () 
    {
        controller = GetComponent<CharacterController>();

        ChangeMovementState(movementState);
	}
	
	// Update is called once per frame
	void Update () 
    {
        //Update Movement

        ControlUpdate();

    }
    

    //Controls and Movement Functions

    public void ChangeMovementState(int state)
    {
        movementState = state;

        if (state == NoMovement)
        {
            controller.height = 1;
            controller.center = new Vector3(0,0,0);
        }
        else if (state == GroundedMovement)
        {
            controller.height = 2;
            controller.center = new Vector3(0, -0.5f, 0);
        }
        else if (state == TetheredMovement)
        {
            controller.height = 1;
            controller.center = new Vector3(0, 0, 0);
        }
    }


    void ControlUpdate()
    {
        // Normal Movement (Grounded state)

        if (movementState == NoMovement)
        {

        }
        else if (movementState == GroundedMovement)
        {
            if (controller.isGrounded)
            {
                HorizontalMoveControl();

                if (Input.GetButton("Jump"))
                    moveDirection.y = jumpSpeed;

            }
            moveDirection.y -= gravity * Time.deltaTime;
            controller.Move(moveDirection * Time.deltaTime);

            CameraControl();
        }
        else if (movementState == TetheredMovement)
        {
            HorizontalMoveControl();

            if (Input.GetButton("Ascend"))
            {
                AscendMoveControl();
            }
            else if (Input.GetButton("Descend"))
            {
                DescendMoveControl();
            }

            controller.Move(moveDirection * Time.deltaTime);

            CameraControl();

        }
        
    }

    void CameraControl()
    {
        lookDirectionH = new Vector3(0, Input.GetAxis("Horizontal2"), 0);
        lookDirectionV = Input.GetAxis("Vertical2") * lookSpeedV;

        transform.Rotate(lookDirectionH * lookSpeedH);

        cameraRotationAxis = rightSide.position - transform.position;
        mainCamera.transform.RotateAround(transform.position, cameraRotationAxis, lookDirectionV);
    }

    void HorizontalMoveControl()
    {
        moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        moveDirection = transform.TransformDirection(moveDirection);
        moveDirection *= speed;
    }

    void AscendMoveControl()
    {
        moveDirection.y = ascendSpeed;
    }

    void DescendMoveControl()
    {
        moveDirection.y = -descendSpeed;
    }

    // Trigger Handling

    void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Trigger>())
        {
            other.GetComponent<Trigger>().OnActivate();
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<Trigger>())
        {
            other.GetComponent<Trigger>().OnDeactivate();
        }
    }


}
