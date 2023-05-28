import SwiftUI

struct CardView: View {
    @State private var index = 0
    @State private var isPresented : Bool = false
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
                }.sheet(isPresented: $isPresented){
                    InfoView()
                }
                    .navigationTitle("BioReality")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button() {
                                isPresented = true
                            } label: {
                                infoButton.padding(.top, 12)
                            }.padding()
                        }
                    }
                
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    var infoButton: some View{
        Group{
            Image(systemName: "info.circle")
                .bold()
                .fontSizeForDevice(iPhoneSize: 24, iPadSize: 24)
                .multilineTextAlignment(.center)
                .overlay {
                    LinearGradient(gradient: Gradient(colors: [.purple, .indigo]), startPoint: .top, endPoint: .bottom)
                        .mask(
                            Image(systemName: "info.circle")
                                .bold()
                                .fontSizeForDevice(iPhoneSize: 24, iPadSize: 24)
                                .multilineTextAlignment(.center)
                        )
                }
        }
    }
}

