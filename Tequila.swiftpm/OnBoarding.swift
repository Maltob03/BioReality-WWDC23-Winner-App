//
//  OnBoarding.swift
//  Tequila
//
//  Created by Matteo Altobello on 17/04/23.
//

import SwiftUI

struct OnBoarding: View {
    @Binding var spengi : Bool
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.bar)
                            .cornerRadius(25)
                            .frame(width: geometry.size.width / 2, height: geometry.size.height / 2 )
                        VStack{
                            Text("Use gesture to play with AR").font(.title)
                            HStack{
                                Image(systemName: "arrow.up.left.and.arrow.down.right").foregroundColor(.purple)
                                VStack(alignment: .leading) {
                                    Text("**Pinch to zoom**")
                                    Text("Use two fingers on the screen, and then move them to zoom in or out")
                                }.frame(width: geometry.size.width / 4)
                                .padding(.horizontal)
                                .padding(.vertical, 24)
                                    
                            }
                            HStack{
                                Image(systemName: "arrow.counterclockwise").foregroundColor(.purple)
                                VStack(alignment: .leading) {
                                    Text("**Rotation**")
                                    Text("Place two fingers on the screen, and then rotate them in a circular motion to rotate the model.")
                                }.frame(width: geometry.size.width / 4)
                                .padding(.horizontal)
                            }
                            .padding(.vertical, 24)
                            
                            
                            Button("Continue") {
                                spengi = false
                            }.padding()
                             .buttonStyle(BorderedProminentButtonStyle())
                        }.frame(width: geometry.size.width, height: geometry.size.height)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct OnBoarding_Preview: PreviewProvider {
    static var previews: some View {
        OnBoarding(spengi: .constant(false))
    }
}

