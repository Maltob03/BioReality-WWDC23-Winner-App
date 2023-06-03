//
//  PremiumView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI

struct PremiumView: View {
    
    @State var PremiumText1: String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        GeometryReader{ geo in
                ZStack{
                    /*
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.purple, .indigo]), startPoint: .top, endPoint: .bottom))
                        .frameHeightForDevice(iPhoneHeight: 100, iPadHeight: 150)
                        .cornerRadius(20)
                    Text(PremiumText1)
                        .fontSizeForDevice(iPhoneSize: 16, iPadSize: 22).padding(.horizontal,8)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                     */
                    Rectangle()
                        .fill(.clear)
                        .frameHeightForDevice(iPhoneHeight: 100, iPadHeight: 150)
                        .cornerRadius(20)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .indigo]), startPoint: .top, endPoint: .bottom), lineWidth: 10))
                        .padding()
                        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.2), radius: 2, x: 10, y: 10)
                        Text(PremiumText1)
                            .fontSizeForDevice(iPhoneSize: 16, iPadSize: 22).padding(.horizontal,8)
                            .fontWeight(.bold)
                            .foregroundColor(Color("text"))
                            .multilineTextAlignment(.leading)
                    
                }
                
            }
    }
}
