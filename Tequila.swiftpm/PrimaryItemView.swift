//
//  SingleCardView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI

struct SingleCardView: View {
    @State var HeaderTextSquare: String
    @State var ImageAssetName: String
    @State var color: Color
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        ZStack{
            Rectangle()
                .fill(color)
                .cornerRadius(25)
            VStack{
                Text(HeaderTextSquare)
                    //.font(.system(.title2))
                    .fontSizeForDevice(iPhoneSize: 20, iPadSize: 28)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 36)
                Image(ImageAssetName)
                    .resizable()
                    .scaledToFit()
            }
            
        }.padding()
    }
}

