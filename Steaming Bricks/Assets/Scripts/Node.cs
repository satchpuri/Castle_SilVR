using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Node {

    public bool free;
    public Vector3 worldPosition;
    public int half_size;

    public Node(bool _free, Vector3 _worldPos)
    {
        free = _free;
        worldPosition = _worldPos;
    }
	
}
