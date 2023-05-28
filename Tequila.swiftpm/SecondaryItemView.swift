//
//  PremiumView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI

struct PremiumView: View {
    
    @State var PremiumText1: String
    
    var body: some View {
        GeometryReader{ geo in
                ZStack{
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.purple, .indigo]), startPoint: .top, endPoint: .bottom))
                        .frameHeightForDevice(iPhoneHeight: 100, iPadHeight: 150)
                        .cornerRadius(20)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color("Rounded"), lineWidth: 4)
                            )
                    
                    Text(PremiumText1)
                        .fontSizeForDevice(iPhoneSize: 16, iPadSize: 22).padding(.horizontal,8)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
            }
    }
}
