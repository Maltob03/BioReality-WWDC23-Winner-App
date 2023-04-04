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
    var body: some View {
        ZStack{
            Rectangle()
                .fill(color)
                .frame(width: 350, height: 376)
                .cornerRadius(25)
            VStack{
                Text(HeaderTextSquare).fontWeight(.bold).foregroundColor(.white).padding(.top, 36)
                Image(ImageAssetName).resizable().scaledToFit()
            }
            
        }.padding()
    }
}

