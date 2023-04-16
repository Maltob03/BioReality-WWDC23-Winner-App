//
//  DetailView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI
import SceneKit

struct DetailView: View {
    @State var TitleDetailView: String //Name of the System
    @State var OrganDescription: String //Description of the System
    @State var scene: SCNScene? //object for AR/3D render
    @State var organ: String //name of the OBJECT
    @State var scene2: SCNScene?
    @State private var isPresented = false //var for the modal
    
    init(ModelName: String, ModelText: String, scene: SCNScene? = nil, organ: String) {
        
        self.TitleDetailView = ModelName
        self.OrganDescription = ModelText
        self.scene = SCNScene(named: organ) //This type of inizialization allow me to pass the correct OBJECT in the detailView
        self.scene2 = SCNScene(named: organ) //unused
        self.organ = organ //The name of the 3D model that is passed to the SCNScene Object
        self.isPresented = isPresented
    }
    
    
    var body: some View {
        ScrollView{
            VStack{
                top
                Divider()
                Text(OrganDescription).fixedSize(horizontal: false, vertical: true).padding(24)
            }.fullScreenCover(isPresented: $isPresented) {
                arViewer
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
    
    var header: some View{
        Group{
            HStack{
                Text(TitleDetailView).bold().font(.title)
                Spacer()
                Button("See in AR") {
                    isPresented.toggle()
                }.buttonStyle(.borderedProminent)
            }.padding(.top, 24)
            .padding(.horizontal, 24)
        }
    }
    
    var top: some View{
        Group{
            VStack{
                header
                ZStack{
                    Image("CardBG3")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(25)
                        .opacity(0.4)
                        .padding(24)
                        .frameHeightForDevice(iPhoneHeight: 400, iPadHeight: 600)
                    CustomSceneView(scene: $scene)
                        .frameSizeForDevice(iPhoneSize: CGSize(width: 300, height: 300), iPadSize: CGSize(width: 550, height: 550))
                }
            }
        }
    }
    
    var arViewer: some View{
        Group{
            ZStack{
                ARView(scene: $scene2).ignoresSafeArea()
                VStack{
                    HStack{
                        Spacer()
                        ZStack{
                            Image(systemName: "xmark.circle.fill").font(.system(size:40)).foregroundColor(.black)
                                .background(.ultraThinMaterial)
                            //.background(Color.white)
                            //.colorMultiply(.black)
                                .clipShape(Circle())
                            
                        }.onTapGesture {
                            isPresented.toggle()
                        }
                    }
                    Spacer()
                }.padding()
            }
        }
    }
}
