//
//  IpadCarouselView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/01/23.
//

import SwiftUI
struct IpadCarouselView: View {
    let screenRect = UIScreen.main.bounds
    @State var frameSize : CGFloat = 0.0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                NavigationLink(destination: DetailView(ModelName: modelBrain.name,ModelText: modelBrain.description, organ: "Brain.scn" )) {
                    SingleCardView(emoji: "🧠", HeaderTextSquare: "Nervous System", ImageAssetName: "heart")
                }
                NavigationLink(destination: DetailView(ModelName: modelHeart.name,ModelText: modelHeart.description,organ: "Heart.scn")) {
                    SingleCardView(emoji: "🫀", HeaderTextSquare: "Circulatory System", ImageAssetName: "brain")
                }
                NavigationLink(destination: DetailView(ModelName: modelLungs.name,ModelText: modelLungs.description,organ: "Lungs.scn" )) {
                    SingleCardView(emoji: "🫁", HeaderTextSquare: "Circulatory System", ImageAssetName: "brain")
                }
            }
        }.onAppear(perform: {adaptFrame(frameSize: frameSize, screenHeigt: screenRect.size.height, screenWidth: screenRect.size.width)
            print(frameSize)
        })
        .frame(height: frameSize)
    }
    
    func adaptFrame(frameSize: CGFloat, screenHeigt: CGFloat, screenWidth: CGFloat ){
        if screenHeigt < 745 && screenWidth < 1134 || screenHeigt < 1134 && screenWidth < 745 {
            self.frameSize = 350
        }
        else{ self.frameSize = 450 }
    }
    
    
    
}
