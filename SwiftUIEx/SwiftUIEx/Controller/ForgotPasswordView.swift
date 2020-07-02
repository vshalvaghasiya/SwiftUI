//
//  ForgotPasswordView.swift
//  DutyFree-UI
//
//  Created by Vishal on 27/06/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.presentationMode) var presentation
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack{
                    Image("icon_blurBG").scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.5).padding(.top, (geometry.size.height * 0.5) - geometry.size.height)
                    
                    VStack (){
                        HStack{
                            Image("icon_forgot")
                                .frame(height: 94)
                        }
                        
                        HStack{
                            Text("Forgot Password")
                                .font(.headline)
                                .bold()
                        }
                        .padding()
                        
                        HStack{
                            Text("Enter your email below to receive your password reset instruction")
                                .frame(width: 266)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)
                                .foregroundColor(ColorName.gray)
                        }
                        .padding()
                        
                        Group() {
                            HStack() {
                                Image("icon_email").padding()
                                Text("Email       ").frame(alignment: .leading)
                                TextField("email", text: self.$username).padding(5)
                                    .frame(height: 50)
                            }
                            .border(borderColor, width: 1)
                            .cornerRadius(8)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                        }
                        
                        HStack {
                            NavigationLink(destination: Text("")
                                .navigationBarHidden(true).navigationBarTitle("")) {
                                    Text("Submit")
                                        .bold()
                                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            }
                            .frame(height: 50)
                            .padding()
                            .background(Image("icon_loginBG"))
                        }
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }) {
                    Image("icon_back")
                }
                .foregroundColor(ColorName.black)
                .frame(width: 45, height: 40)
                .navigationBarHidden(true)
                .navigationBarTitle("")
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
