//
//  CustomSceneView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 21/11/22.
//

import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable {
    
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        view.backgroundColor = .clear
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        
    }
    
   
}
