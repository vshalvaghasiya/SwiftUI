//
//  LoginView.swift
//  DutyFree-UI
//
//  Created by Vishal on 24/06/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var titleString: String = String()
    @State var isNavigationBarHidden: Bool = true
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack{
                    Image("icon_bg")
                        .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
                    
                    VStack (){
                        HStack{
                            Image("icon_logoIcon")
                                .frame(height: 106)
                        }.frame(alignment: .top)
                        
                        HStack {
                            Image("icon_textName")
                                .frame(height: 47)
                        }
                        .padding()
                        HStack {
                            NavigationLink(destination: Start()
                                .navigationBarHidden(true).navigationBarTitle("")) {
                                    Text("Duty Free")
                                        .bold()
                                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            }
                            .background(Image("icon_buttonBG"))
                        }
                        .padding()
                        
                        HStack {
                            NavigationLink(destination: SignInView()
                                .navigationBarHidden(true).navigationBarTitle("")) {
                                    Text("I already have an account")
                                        .bold()
                                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            }
                            .frame(height: 50)
                            .padding()
                            .background(Image("icon_buttonGrayBG"))
                        }
                        HStack {
                            Button(action: {}) {
                                Text("Create New Account")
                                    .bold()
                                    .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
                            }
                            .frame(height: 30)
                            .padding()
                        }
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
                }
                .frame(height: geometry.size.height)
                .padding(.leading)
                .navigationBarHidden(true)
                .navigationBarTitle("")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

/*
 VStack (){
 
 HStack{
 Image("icon_logoIcon")
 .frame(height: 106)
 }.frame(alignment: .top)
 
 HStack {
 Image("icon_textName")
 .frame(height: 47)
 }
 .padding()
 HStack {
 Button(action: {}) {
 Text("Duty Free")
 .bold()
 .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
 }
 .background(Image("icon_buttonBG"))
 }
 .padding()
 
 HStack {
 Button(action: {}) {
 Text("I already have an account")
 .bold()
 .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
 }
 .frame(height: 50)
 .padding()
 .background(Image("icon_buttonGrayBG"))
 }
 HStack {
 Button(action: {}) {
 Text("Create New Account")
 .bold()
 .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
 }
 .frame(height: 30)
 .padding()
 }
 }
 //                .background(Image("icon_bg")
 //                    .resizable()
 //                    .background(Color.red)
 //                    .scaledToFill()
 //                )
 .background(Color.yellow)
 */

/*
 {
 NavigationView {
 VStack (alignment: .center){
 Spacer()
 HStack{
 Image("icon_logoIcon")
 .frame(height: 106)
 }
 
 HStack {
 Image("icon_textName")
 .frame(height: 47)
 }
 .padding()
 HStack {
 Button(action: {}) {
 Text("Duty Free")
 .bold()
 .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
 }
 .padding()
 .background(Image("icon_buttonBG"))
 }
 
 HStack {
 Button(action: {}) {
 Text("I already have an account")
 .bold()
 .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
 }
 .frame(height: 50)
 .padding()
 .background(Image("icon_buttonGrayBG"))
 }
 HStack {
 Button(action: {}) {
 Text("Create New Account")
 .bold()
 .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
 }
 .frame(height: 30)
 .padding()
 }
 }.background(Image("icon_bg")
 )
 .edgesIgnoringSafeArea(.top)
 }
 }
 */
