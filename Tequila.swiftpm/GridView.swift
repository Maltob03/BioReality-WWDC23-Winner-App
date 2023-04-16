//
//  GridView.swift
//  Tequila
//
//  Created by Matteo Altobello on 16/04/23.
//

import SwiftUI

struct GridView: View {
    let columns = [
        GridItem(.flexible(), spacing: 24),
        GridItem(.flexible(), spacing: 24)
    ]
    
    var body: some View {
        GeometryReader{ geometry in
            
            LazyVGrid(columns: columns) {
                NavigationLink(destination: SecondaryDetailView(ModelName: fibrillation.title,ModelText: fibrillation.text)) {
                    PremiumView(PremiumText1: "Atrial Fibrillation")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                NavigationLink(destination: SecondaryDetailView(ModelName: Parkinkson.title,ModelText: Parkinkson.text)) {
                    PremiumView(PremiumText1: "Parkinson's desease")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                NavigationLink(destination: SecondaryDetailView(ModelName: Alzheimer.title,ModelText: Alzheimer.text)) {
                    PremiumView(PremiumText1: "Alzheimer's desease")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                    
                NavigationLink(destination: SecondaryDetailView(ModelName: Ischemia.title,ModelText: Ischemia.text)) {
                    PremiumView(PremiumText1: "Ischemia")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                
                
            }.padding(.horizontal, 24)
        }
    }
}
