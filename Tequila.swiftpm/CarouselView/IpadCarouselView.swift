//
//  IpadCarouselView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/01/23.
//

import SwiftUI
struct IpadCarouselView: View {
    let screenRect = UIScreen.main.bounds
    @State var geoHeigth: CGFloat
    @State var geoWidth: CGFloat
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
        }.frame(height: geoHeigth*0.8)
    }
    
    
}


