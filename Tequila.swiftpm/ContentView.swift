import SwiftUI
import SceneKit

struct ContentView: View {
    @State var scene : SCNScene? = .init(named: "Lungs.scn")
    
    var body: some View {
        VStack{
            Text("VEDIAMO")
            CustomSceneView(scene: $scene)
                .padding(36)
                .border(.red)
                .onTapGesture {
                    print("PROVAPROVA")
                }
        }
    }
}
