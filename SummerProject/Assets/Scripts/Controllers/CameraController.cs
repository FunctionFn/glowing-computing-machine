using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

    // Singleton Pattern

    private static CameraController _inst;
    public static CameraController Inst { get { return _inst; } }

    void Awake()
    {
        _inst = this;
    }



	
	void Start () 
    {
	
	}
	
	
	void Update () 
    {
	
	}
}
