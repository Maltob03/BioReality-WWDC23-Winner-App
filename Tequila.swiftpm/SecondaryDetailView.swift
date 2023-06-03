//
//  SecondaryDetailView.swift
//  Tequila
//
//  Created by Matteo Altobello on 14/04/23.
//

import SwiftUI
import SceneKit

struct SecondaryDetailView: View {
    @State var TitleDetailView: String //Name of the System
    @State var OrganDescription: String //Description of the System
    @State var risk: String
    @State var impact: String
    @State var complication: String
    @State var isExpanded1: Bool = false
    @State var isExpanded2: Bool = false
    @State var isExpanded3: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView {
                VStack {
                    top
                    List {
                        disclousureGroup
                    }
                    .scrollContentBackground(.hidden)
                    .frame(height: geometry.size.height / 1.3)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var top: some View{
        Group{
            HStack{
                Text(TitleDetailView)
                    .bold()
                    .font(.largeTitle)
                    .overlay {
                        LinearGradient(gradient: Gradient(colors: [.purple, .indigo]), startPoint: .top, endPoint: .bottom)
                            .mask(
                                Text(TitleDetailView)
                                    .bold()
                                    .font(.largeTitle)
                            )
                    }
            }.padding(24)
            Text(OrganDescription)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 24)
        }
    }
    
    var disclousureGroup: some View{
        Group{
            DisclosureGroup(
                isExpanded: $isExpanded1,
                content: { Text(risk) },
                label: {
                    Button("Risk") {
                        withAnimation {
                            isExpanded1.toggle()
                        }
                    }
                }
            )
            DisclosureGroup(
                isExpanded: $isExpanded2,
                content: { Text(impact) },
                label: {
                    Button("Impact") {
                        withAnimation {
                            isExpanded2.toggle()
                        }
                    }
                }
            )
            DisclosureGroup(
                isExpanded: $isExpanded3,
                content: { Text(complication) },
                label: {
                    Button("Complication") {
                        withAnimation {
                            isExpanded3.toggle()
                        }
                    }
                }
            )
        }
    }
}

