//
//  WelcomeView.swift
//  Twitter Clone
//
//  Created by Hanaf on 04/12/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer(minLength: 0)
                    
                    Image("twitter")
                        .resizable()
                        .scaledToFit()
                        .padding(.trailing)
                        .frame(width: 70, height: 70)
                    
                    Spacer(minLength: 0)
                }
                
                Spacer(minLength: 0)
                
                Text("See what's happening in the world right now.")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: (getRect().width * 0.9), alignment: .center)
                
                Spacer(minLength: 0)
                
                VStack(alignment: .center, spacing: 10, content: {
                    Button(action: {
                        print("Sign in with google")
                    }, label: {
                        HStack(spacing: -4, content: {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                            Text("Continoue with Google")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                        })
                        .overlay(
                        
                            RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                    })
                    
                    Button(action: {
                        print("Sign in with apple")
                    }, label: {
                        HStack(spacing: -4, content: {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                            Text("Continoue with Apple")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                        })
                        .overlay(
                        
                            RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                    })
                    HStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: (getRect().width * 0.35), height: 1)
                        
                        Text("Or")
                            .foregroundColor(.gray)
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: (getRect().width * 0.35), height: 1)
                    }
                   
                    NavigationLink(destination: RegisterView().navigationBarHidden(true)) {
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .frame(width: 320, height: 60, alignment: .center)
                            .overlay(
                                Text("Create account")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding()
                            )
                    }
                   
                })
                .padding()
                
                VStack(alignment: .leading, content: {
                    VStack{
                        Text("By signing up you agree to our") + Text("Terms") .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(", ") + Text(" Privacy Policy") .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(", ") + Text(" Cookie Use") .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                    }
                    .padding(.bottom)
                    
                    HStack(spacing: 2, content: {
                        Text("Have an account already? ")
                        NavigationLink(destination: LoginView().navigationBarHidden(true)) {
                            Text("Log in").foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                        }
                    })
                })
                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
