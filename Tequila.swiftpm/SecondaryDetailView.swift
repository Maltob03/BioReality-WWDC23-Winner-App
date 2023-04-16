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
    
    init(ModelName: String, ModelText: String) {
        self.TitleDetailView = ModelName
        self.OrganDescription = ModelText
    }
    
    
    var body: some View {
        ScrollView{
            VStack{
                buttons
                Divider().padding(.bottom,24)
                Text(OrganDescription).fixedSize(horizontal: false, vertical: true).padding(.horizontal,24)
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
    
    var buttons: some View{
        HStack{
            Text(TitleDetailView).bold().font(.title)
            Spacer()
        }.padding(.top, 24)
        .padding(.horizontal,24)
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryDetailView(ModelName: "Heart", ModelText: fibrillation.text)
    }
}
