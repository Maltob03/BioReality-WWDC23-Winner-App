//
//  AR_View.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 22/11/22.
//
import SwiftUI
import ARKit

struct ARView: UIViewRepresentable {
    
    @Binding var scene: SCNScene?
    @State var zoomLevel: CGFloat = 0.0005
    
    func makeUIView(context: Context) -> some UIView {
        let sceneView = ARSCNView(frame: UIScreen.main.bounds)
        sceneView.showsStatistics = false
        sceneView.allowsCameraControl = false
        sceneView.autoenablesDefaultLighting = true
        sceneView.antialiasingMode = .multisampling2X
        sceneView.scene = scene ?? SCNScene()
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal]
        sceneView.session.run(configuration)
        
        // Add pinch to zoom gesture
        let pinchGesture = UIPinchGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handlePinchGesture(_:)))
        sceneView.addGestureRecognizer(pinchGesture)
        
        // Add rotation gesture
        let rotationGesture = UIRotationGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handleRotationGesture(_:)))
        sceneView.addGestureRecognizer(rotationGesture)
        
        return sceneView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
            
        }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(zoomLevel: $zoomLevel)
        
    }
    
    class Coordinator: NSObject {
        
        @Binding var zoomLevel: CGFloat
        
        var currentZoomLevel: CGFloat
        
        init(zoomLevel: Binding<CGFloat>) {
                    self._zoomLevel = zoomLevel
                    self.currentZoomLevel = zoomLevel.wrappedValue
                }
        
        // Handle pinch to zoom gesture
        @objc func handlePinchGesture(_ gestureRecognizer: UIPinchGestureRecognizer) {
            guard let sceneView = gestureRecognizer.view as? ARSCNView else { return }
            
            let scale = gestureRecognizer.scale
            
            sceneView.scene.rootNode.childNodes.forEach { node in
                var nodeScale = node.scale
                nodeScale.x *= Float(scale)
                nodeScale.y *= Float(scale)
                nodeScale.z *= Float(scale)
                node.scale = nodeScale
            }
            
            gestureRecognizer.scale = 1.0
            
        }

        
        // Handle rotation gesture
        @objc func handleRotationGesture(_ gestureRecognizer: UIRotationGestureRecognizer) {
            guard let sceneView = gestureRecognizer.view as? ARSCNView else { return }
            
            let rotation = Float(gestureRecognizer.rotation)
            sceneView.scene.rootNode.childNodes.forEach({ (node) in
                node.eulerAngles.y -= rotation
            })
            
            gestureRecognizer.rotation = 0
        }
    }

}
