//
//  CarouselView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/11/22.
//

import SwiftUI


struct CarouselView: View {
    @State private var index = 0
    var body: some View {
        VStack{
            TabView(selection: $index) {
                NavigationLink(destination: DetailView(DetailColor: modelBrain.color, ModelName: modelBrain.name,ModelText: modelBrain.description, organ: "Brain.scn" )) {
                    SingleCardView(HeaderTextSquare: "Nervous System", ImageAssetName: "brain",color: CustomColor.myColor3)
                }.tag(1)
                NavigationLink(destination: DetailView(DetailColor: modelHeart.color, ModelName: modelHeart.name,ModelText: modelHeart.description,organ: "Heart.scn")) {
                    SingleCardView(HeaderTextSquare: "Circulatory System", ImageAssetName: "heart",color: CustomColor.myColor)
                }.tag(2)
                NavigationLink(destination: DetailView(DetailColor: modelLungs.color, ModelName: modelLungs.name,ModelText: modelLungs.description,organ: "Lungs.scn" )) {
                    SingleCardView(HeaderTextSquare: "Circulatory System", ImageAssetName: "lungs",color: CustomColor.myColor2)
                }.tag(3)
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 400)
        }
    }
}
