
import SwiftUI

struct CardView: View {
    @State private var index = 0
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        GeometryReader{ geometry in
            NavigationView(){
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        if(horizontalSizeClass == .compact){
                            CarouselView()
                        }
                        else {
                            IpadCarouselView().padding(.horizontal,8)
                        }
                        HStack{
                            Text("**Diseases**").padding()
                            Spacer()
                        }.padding(.horizontal, 8)
                        GridView()
                        
                    } .frame(width: geometry.size.width, height: geometry.size.height + 50)
                }.navigationTitle("BioReality")
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

