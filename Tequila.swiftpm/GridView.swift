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
                NavigationLink(destination: SecondaryDetailView(TitleDetailView: fibrillation.title,OrganDescription: fibrillation.text, risk: fibrillation.risk, impact: fibrillation.impact, complication: fibrillation.complications)) {
                    PremiumView(PremiumText1: "Atrial Fibrillation")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                NavigationLink(destination: SecondaryDetailView(TitleDetailView: Parkinkson.title,OrganDescription: Parkinkson.text, risk: Parkinkson.risk, impact: Parkinkson.impact, complication: Parkinkson.complications)) {
                    PremiumView(PremiumText1: "Parkinson's desease")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                NavigationLink(destination: SecondaryDetailView(TitleDetailView: Alzheimer.title,OrganDescription: Alzheimer.text, risk: Alzheimer.risk, impact: Alzheimer.impact, complication: Alzheimer.complications)) {
                    PremiumView(PremiumText1: "Alzheimer's desease")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                    
                NavigationLink(destination: SecondaryDetailView(TitleDetailView: Ischemia.title,OrganDescription: Ischemia.text, risk: Ischemia.risk, impact: Ischemia.impact, complication: Ischemia.complications)) {
                    PremiumView(PremiumText1: "Ischemia")
                        .frame(width: (geometry.size.width / 2) - 20, height: 150)
                }
                
                
            }.padding(.horizontal, 24)
        }
    }
}
