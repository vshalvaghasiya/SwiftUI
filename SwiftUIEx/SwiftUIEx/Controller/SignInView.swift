//
//  SignInView.swift
//  DutyFree-UI
//
//  Created by Vishal on 26/06/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import SwiftUI
import Alamofire
struct SignInView: View {
    @Environment(\.presentationMode) var presentation
    
    @State var apiManager = APIManager()
    
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
                            Image("icon_logoIcon")
                                .frame(height: 106)
                        }
                        
                        HStack {
                            Image("icon_textName")
                                .frame(height: 47)
                        }
                        
                        HStack{
                            Text("Login to your account")
                                .font(.headline)
                                .bold()
                        }
                        .padding(.top, 30)
                        .padding(.bottom, 20)
                        
                        Group() {
                            HStack() {
                                Image("icon_email").padding()
                                Text("Email       ").frame(alignment: .leading)
                                TextField("email", text: self.$username).padding(5)
                                    .frame(height: 50)
                                    .autocapitalization(.none)
                            }
                            .border(borderColor, width: 1)
                            .cornerRadius(8)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            
                            HStack() {
                                Image("icon_password").padding()
                                Text("Password")
                                SecureField("password", text: self.$password).padding(5)
                                    .frame(height: 50)
                                    .autocapitalization(.none)
                            }
                            .border(borderColor, width: 1)
                            .cornerRadius(8)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.bottom, 20)
                        }
                        
                        HStack {
                            Button(action: {}) {
                                Text("Forgot Password?")
                                    .bold()
                                    .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
                            }
                            .frame(height: 25)
                            .padding()
                        }
                        
                        HStack {
                            Button(action: {self.login()}) {
                                Text("Login")
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
    
    func login(){
        let param = [
            "email" : self.username,
            "password" : self.password
        ]
        ERProgressHud.sharedInstance.show(withTitle: "Loading...")
        apiManager.postData(url: loginURL, param: param) { (result) in
            print("success==>",result)
            ERProgressHud.sharedInstance.hide()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
