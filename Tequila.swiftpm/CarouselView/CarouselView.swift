//
//  CarouselView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/11/22.
//

import SwiftUI



struct CarouselView: View {
    @State private var index = 0
    let screenRect = UIScreen.main.bounds
    var body: some View {
            TabView(selection: $index) {
                NavigationLink(destination: DetailView(ModelName: modelBrain.name,ModelText: modelBrain.description, organ: "Brain.scn" )) {
                    SingleCardView(emoji: "🧠", HeaderTextSquare: "Nervous System", ImageAssetName: "brain")
                }.tag(1)
                NavigationLink(destination: DetailView( ModelName: modelHeart.name,ModelText: modelHeart.description,organ: "Heart.scn")) {
                    SingleCardView(emoji: "🫀", HeaderTextSquare: "Circulatory System", ImageAssetName: "heart")
                }.tag(2)
                NavigationLink(destination: DetailView( ModelName: modelLungs.name,ModelText: modelLungs.description,organ: "Lungs.scn" )) {
                    SingleCardView(emoji: "🫁", HeaderTextSquare: "Circulatory System", ImageAssetName: "lungs")
                }.tag(3)
            }.padding(8).tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .frame(height: screenRect.size.height / 2)
    }
}
