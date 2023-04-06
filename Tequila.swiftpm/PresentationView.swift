
import SwiftUI

struct CardView: View {
    @State private var index = 0
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var one: CGSize?
    var body: some View {
        GeometryReader{ geometry in
            NavigationView(){
                ScrollView(.vertical){
                    VStack{
                        if(horizontalSizeClass == .compact){
                            CarouselView().padding(.top)
                        }
                        else {
                            IpadCarouselView(geoHeigth: geometry.size.height, geoWidth: geometry.size.width)
                        }
                        HStack{
                            Text("Section").padding()
                            Spacer()
                        }
                        secondaryList
                    }
                }.navigationTitle("BioReality")
            }.navigationViewStyle(StackNavigationViewStyle())
            
        }
    }
    
    var secondaryList: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                PremiumView(PremiumText1: "Testa", PremiumText2: "Tronco",PremiumColor: CustomColor.myColor3, ShowAlert: false)
                PremiumView(PremiumText1: "Arto Superiore", PremiumText2: "Arto Inferiore",PremiumColor: CustomColor.myColor, ShowAlert: false)
            }
        }
    }
    
}

