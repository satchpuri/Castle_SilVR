using UnityEngine;
using System.Collections;

public class Gizmo : MonoBehaviour {

    public float gizmoSize = .01f;
    public Color gizmoColor = Color.yellow;
    public bool isVisible = true;
  
    void OnDrawGizmos()
    {
        if (isVisible)
        {
            
            Gizmos.color = gizmoColor;
            Gizmos.DrawWireSphere(transform.position, gizmoSize);
        }
    }
}
