//
//  RegisterView.swift
//  Twitter Clone
//
//  Created by Hanaf on 05/12/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = AuthViewModel()
    @State var name = ""
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
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
                    .scaledToFit()
                    .padding(.trailing)
                    .frame(width: 60, height: 60)
            }
            Text("Create your account")
                .font(.title)
                .bold()
                .padding(.top, 35)
            
            VStack(alignment: .leading, spacing: nil, content: {
                CustomAuthTextField(placeholder: "Name", text: $name)
                CustomAuthTextField(placeholder: "Username", text: $username)
                CustomAuthTextField(placeholder: "Phone or Email", text: $email)
                SecureAuthTextField(placeholder: "Password", text: $password)
                    
            })
            
            Spacer(minLength: 0)
            
            VStack{
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                
                HStack{
                    Spacer()
                    
                    Button(action: {
                        self.viewModel.register(name: name, username: username, email: email, password: password)
                    }, label: {
                        Capsule()
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(
                                Text("Next")
                                    .foregroundColor(.white)
                            )
                    })
                }
                .padding(.trailing, 24)
            }
        }
    }
}

#Preview {
    RegisterView()
}
