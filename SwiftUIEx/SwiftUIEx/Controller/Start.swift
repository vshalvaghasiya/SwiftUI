//
//  ContentView.swift
//  DutyFree-UI
//
//  Created by Vishal on 23/06/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import SwiftUI
struct Start: View {
    var body: some View {
        NavigationView {
            VStack() {
                Spacer()
                Image("icon_logo")
                    .frame(width: 320, height: 320, alignment: .center)
                    .padding()
                Text("Lorem Ipsum")
                    .font(.headline)
                    .foregroundColor(Color(red: 253/255, green: 58/255, blue: 23/255))
                    .bold()
                
                Text("Lorem dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt ut ero labore et dolore")
                    .font(.subheadline)
                    .padding(20)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 153/255, green: 153/255, blue: 159/255))
                
                HStack {
                    NavigationLink(destination: LoginView(titleString: "Login").navigationBarHidden(true).navigationBarTitle("")) {
                        Text("SKIP")
                            .bold()
                            .foregroundColor(Color(red: 253/255, green: 58/255, blue: 23/255))
                    }
                    Spacer()
                    NavigationLink(destination: LoginView(titleString: "Login").navigationBarHidden(true).navigationBarTitle("")) {
                        Text("NEXT")
                            .bold()
                            .foregroundColor(Color(red: 253/255, green: 58/255, blue: 23/255))
                    }
                }.padding(20)
            }.background(Image("icon_bg")
                .resizable()
                .scaledToFit()
                .clipped()
            )
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
