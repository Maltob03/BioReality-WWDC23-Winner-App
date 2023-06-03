//
//  InfoView.swift
//  BioReality
//
//  Created by Domenico Altobello on 28/05/23.
//


import SwiftUI


struct InfoView: View {
    @State private var creditExpanded = false
    @State private var shareWithUsExpanded = false
    @State private var introCoverShowing: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                
                Section(header: Text("Share with us")) {
                    DisclosureGroup(isExpanded: $shareWithUsExpanded) {
                        Text("Do you have notes you'd like to share with other students, or have you found 3D models you're excited to share with biology enthusiasts? \n\nEmail the developer,your content could be vital to our app and community.\n\n altobellomatteo@gmail.com")
                    } label: {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.accentColor)
                            Text("Be part of BioReality")
                        }
                    }
                }
                
                Section(header: Text("About & Contact")) {
                    Link(destination: URL(string: "altobellomatteo@gmail.com")!, label: {
                        HStack {
                            Text("💌")
                                .foregroundColor(.accentColor)
                            Text("Contact Developer").foregroundColor(.blue)
                        }
                    })
                    
                    /*
                    Section() {
                        DisclosureGroup(isExpanded: $creditExpanded) {
                            VStack(alignment: .leading) {
                                Text("Credit to the model's creators \n").bold()
                                ForEach(creditCollection, id: \.self) { data in
                                    HStack {
                                        Image(systemName: "circle.fill")
                                            .font(.system(size: 8))
                                            .foregroundColor(.purple)
                                        Text("\(data)\n")
                                            .font(.body)
                                    }
                                }
                            }
                        } label: {
                            HStack {
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.accentColor)
                                Text("Credits")
                            }
                        }
                    }
                    */
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Info")
        }
    }
}
