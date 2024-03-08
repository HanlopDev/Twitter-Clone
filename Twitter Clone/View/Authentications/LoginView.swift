//
//  LoginView.swift
//  Twitter Clone
//
//  Created by Hanaf on 22/01/2024.
//

import SwiftUI

struct LoginView: View {
        
    @State var email = ""
    @State var password = ""
    @State var emailDone = false
    
    @StateObject var viewModel = AuthViewModel()

    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        if !emailDone {
            VStack{
                VStack{
                    ZStack{
                        
                        HStack{
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.blue)
                            })
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Image("twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 40, height: 40)
                    }
                    
                    Text("To get started first enter your phone, email, or @username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    CustomAuthTextField(placeholder: "Phone, email or username", text: $email)
                }
                Spacer(minLength: 0)
                
                VStack{
                    Button(action: {
                        if !email.isEmpty {
                            self.emailDone.toggle()
                        }
                        
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Next")
                                .foregroundColor(.white))
                    })
                    .padding(.bottom,4)
                    
                    Text("Forgot password")
                        .foregroundColor(.blue)
                }
            }
        }
        
        else{
            VStack{
                VStack{
                    ZStack{
                        
                        HStack{
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.blue)
                            })
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Image("twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 40, height: 40)
                    }
                    
                    Text("Enter your password to continoue")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    SecureAuthTextField(placeholder: "password", text: $password)
                }
                Spacer(minLength: 0)
                
                VStack{
                    Button(action: {
                        self.viewModel.logon(email: email, password: password)
                        self.emailDone.toggle()
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Login")
                                .foregroundColor(.white))
                    })
                    .padding(.bottom,4)
                    
                    Text("Forgot password")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
