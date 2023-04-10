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
                NavigationLink(destination: DetailView(DetailColor: modelBrain.color, ModelName: modelBrain.name,ModelText: modelBrain.description, organ: "Brain.scn" )) {
                    SingleCardView(HeaderTextSquare: "Nervous System", ImageAssetName: "brain",color: CustomColor.myColor3)
                }
                NavigationLink(destination: DetailView(DetailColor: modelHeart.color, ModelName: modelHeart.name,ModelText: modelHeart.description,organ: "Heart.scn")) {
                    SingleCardView(HeaderTextSquare: "Circulatory System", ImageAssetName: "brain",color: CustomColor.myColor)
                }
                NavigationLink(destination: DetailView(DetailColor: modelLungs.color, ModelName: modelLungs.name,ModelText: modelLungs.description,organ: "Lungs.scn" )) {
                    SingleCardView(HeaderTextSquare: "Circulatory System", ImageAssetName: "brain",color: CustomColor.myColor2)
                }
            }
        }.onAppear(perform: {adaptFrame(frameSize: frameSize, screenHeigt: screenRect.size.height, screenWidth: screenRect.size.width)
            print(frameSize)
        })
        .frame(height: frameSize)
    }
    
    func adaptFrame(frameSize: CGFloat, screenHeigt: CGFloat, screenWidth: CGFloat ){
        if screenHeigt < 745 && screenWidth < 1134 || screenHeigt < 1134 && screenWidth < 745 {
            self.frameSize = 550
        }
        else{ self.frameSize = 600 }
    }
    
    
    
}


//Vertical mini : 1133.0 - 744.0
