using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public float speed;
    public float jumpSpeed;
    public float gravity;

    public float lookSpeedH;
    public float lookSpeedV;
    private Vector3 moveDirection = Vector3.zero;
    private Vector3 lookDirectionH = Vector3.zero;
    private float lookDirectionV;
    CharacterController controller;

    public GameObject camera;
    public Transform rightSide;

    private Vector3 cameraRotationAxis;
	// Use this for initialization
	void Start () 
    {
        controller = GetComponent<CharacterController>();
	}
	
	// Update is called once per frame
	void Update () 
    {
        ControlUpdate();

    }
    
    void ControlUpdate()
    {
        if (controller.isGrounded)
        {
            moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
            moveDirection = transform.TransformDirection(moveDirection);
            moveDirection *= speed;
            if (Input.GetButton("Jump"))
                moveDirection.y = jumpSpeed;

        }
        moveDirection.y -= gravity * Time.deltaTime;

        lookDirectionH = new Vector3(0, Input.GetAxis("Horizontal2"), 0);
        lookDirectionV = Input.GetAxis("Vertical2") * lookSpeedV;

        transform.Rotate(lookDirectionH * lookSpeedH);

        cameraRotationAxis = rightSide.position - transform.position;
        camera.transform.RotateAround(transform.position, cameraRotationAxis, lookDirectionV);

        controller.Move(moveDirection * Time.deltaTime);
        
        
    }
	
}
