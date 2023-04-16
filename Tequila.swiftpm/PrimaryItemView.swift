//
//  SingleCardView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI

struct SingleCardView: View {
    @State var emoji: String
    @State var HeaderTextSquare: String
    @State var ImageAssetName: String
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    
    var body: some View {
        ZStack{
            Image("CardBG3")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                    .opacity(0.4)
                    
             
            VStack(spacing: 0.5){
                Rectangle()
                    .fill(Color.black .opacity(0.5))
                    .frame(width: 250, height: 70)
                    .cornerRadius(25)
                    .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .indigo]), startPoint: .top, endPoint: .bottom), lineWidth: 4)
                        )
                    .overlay(
                    Text(HeaderTextSquare)
                        .fontSizeForDevice(iPhoneSize: 20, iPadSize: 24)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                )
                Text(emoji).font(.system(size: 176))
                
            }
            
        }
        .padding(8)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

