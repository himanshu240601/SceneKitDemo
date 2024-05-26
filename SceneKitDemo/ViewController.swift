//
//  ViewController.swift
//  SceneKitDemo
//
//  Created by Himanshu's MacBook on 26/05/24.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    private var sceneView: SCNView!

    // MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        // initialize scnview
        sceneView = SCNView(frame: self.view.frame)
        
        // configure scene view
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        
        // create a scnscene
        let scene = SCNScene(named: "Lowpoly_tree_sample.obj")
        sceneView.scene = scene
        
        sceneView.scene?.rootNode.scale = SCNVector3(x: 0.5, y: 0.5, z: 0.5)
        
        // add scene view to main parent view
        self.view.addSubview(sceneView)
    }
}
