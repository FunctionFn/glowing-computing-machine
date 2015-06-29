using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public GameObject mainCamera;
    public GameObject fireballPrefab;
    public GameObject windPrefab;

    public Transform rightSide;
    public Transform fireballSpawnLocation;
    public Transform windSpawnLocation;
    public Transform cameraAxisLocation;

    private GameObject tempWind;

    public float speed;
    public float dashSpeed;
    public float jumpSpeed;
    public float ascendSpeed;
    public float descendSpeed;
    public float gravity;

    public float fireballSpeed;
    public float fireballDamage;
    public float fireballUpOffset;

    public float lookSpeedH;
    public float lookSpeedV;
    private Vector3 moveDirection = Vector3.zero;
    private Vector3 lookDirectionH = Vector3.zero;
    private Vector3 lookDirectionV = Vector3.zero;
    private Vector3 dashDirection = Vector3.zero;
    //private float lookDirectionV;
    CharacterController controller;

    private Vector3 cameraRotationAxis;

    //*Timers*

    public float DashTimer;
    public float DashTime;
    public float DashCooldownTimer;
    public float DashCooldown;


    //*State Management*

    //Movement States

    public int NoMovement = 0;
    public int GroundedMovement = 1;
    public int TetheredMovement = 2;
    public int DashMovement = 3;

    public int movementState;

    private bool bIsNearTree;

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

        bIsNearTree = false;

        Physics.IgnoreLayerCollision(12, gameObject.layer);

        DashTimer = DashTime;
	}
	
	// Update is called once per frame
	void Update () 
    {
        //Update Movement

        ControlUpdate();

        PowerUpdate();


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
        else if (state == DashMovement)
        {
            controller.height = 2;
            controller.center = new Vector3(0, -0.5f, 0);
        }
    }

    public void SetNearTree(bool near)
    {
        bIsNearTree = near;
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

            if (Input.GetButtonDown("Tether") && bIsNearTree)
            {
                Tether();
            }

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

            if (Input.GetButtonDown("Tether") && bIsNearTree)
            {
                UnTether();
            }


        }
        
    }

    void CameraControl()
    {
        lookDirectionH = new Vector3(0, Input.GetAxis("Horizontal2"), 0);
        transform.Rotate(lookDirectionH * lookSpeedH);


        lookDirectionV = new Vector3(Input.GetAxis("Vertical2"), 0, 0);
        cameraAxisLocation.Rotate(lookDirectionV * lookSpeedV);
        //Debug.Log(cameraAxisLocation.rotation.eulerAngles.x);

        if (cameraAxisLocation.rotation.eulerAngles.x > 270)
        {
            cameraAxisLocation.localEulerAngles = new Vector3(Mathf.Clamp(cameraAxisLocation.rotation.eulerAngles.x, 280, 400), cameraAxisLocation.rotation.y, cameraAxisLocation.rotation.z);
        }
        else
        {
            cameraAxisLocation.localEulerAngles = new Vector3(Mathf.Clamp(cameraAxisLocation.rotation.eulerAngles.x, -10, 80), cameraAxisLocation.rotation.y, cameraAxisLocation.rotation.z);
        }


        

        /*
        lookDirectionV = Input.GetAxis("Vertical2") * lookSpeedV;
        cameraRotationAxis = rightSide.position - transform.position;
        mainCamera.transform.RotateAround(transform.position, cameraRotationAxis, lookDirectionV);
         */

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

    // Powers

    void PowerUpdate()
    {
        if (Input.GetButtonDown("Fire"))
        {
            Fireball();
        }
        
        if (Input.GetButtonDown("Wind"))
        {
            tempWind = WindBlow();
        }

        if (Input.GetButtonUp("Wind"))
        {
            UnWindBlow(tempWind);
        }

        if (Input.GetButtonDown("Dash"))
        {
            StartDash();
        }

        //Dash Timer
        if (DashTimer < DashTime)
        {
            Dash();
            DashTimer += Time.deltaTime;

            
            if (DashTimer > DashTime)
            {
                EndDash();
            }
            
        }

        DashCooldownTimer += Time.deltaTime;

        
        


    }

    void Fireball()
    {
        GameObject go = (GameObject)Instantiate(fireballPrefab, fireballSpawnLocation.position, mainCamera.transform.rotation);
        go.GetComponent<Rigidbody>().velocity =  (mainCamera.transform.forward + mainCamera.transform.up * fireballUpOffset) * fireballSpeed;
    }

    void Tether()
    {
        ChangeMovementState(TetheredMovement);
    }

    void UnTether()
    {
        ChangeMovementState(GroundedMovement);
    }

    GameObject WindBlow()
    {
        GameObject go = (GameObject)Instantiate(windPrefab, windSpawnLocation.position, mainCamera.transform.rotation);

        go.transform.Rotate(new Vector3(350, 0, 0));
        go.transform.parent = mainCamera.transform;

        return go;
    }

    void UnWindBlow(GameObject go)
    {
        Destroy(go.gameObject);
    }

    // To Do:

    void StartDash()
    {

        if (DashCooldownTimer > DashCooldown)
        {
            DashTimer = 0;
            dashDirection = transform.forward;
            dashDirection *= dashSpeed;
            ChangeMovementState(DashMovement);
            DashCooldownTimer = 0;
        }
    }

    void Dash()
    {
        controller.Move(dashDirection * Time.deltaTime);

    }

    void EndDash()
    {
        ChangeMovementState(GroundedMovement);
    }
}
