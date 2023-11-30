//
//  Home.swift
//  Twitter Clone
//
//  Created by Hanaf on 10/11/2023.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex = 0
    @State var showCreateTweet = false
    @State var text = ""
    
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    Feed()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            if (selectedIndex == 0) {
                                Image("home")
                                    .renderingMode(
                                        /*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("bg"))
                            }
                            else{
                                Image("home")
                            }
                        }
                        .tag(0)
                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem{
                            if (selectedIndex != 1) {
                                Image("search")
                                    .renderingMode(
                                        /*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("bg"))
                            }
                            else{
                                Image("search")
                            }
                            
                        }
                        .tag(1)
                    NotificationView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem{
                            if (selectedIndex != 2) {
                                Image("notifications")
                                    .renderingMode(
                                        /*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("bg"))
                            }
                            else{
                                Image("notifications")
                            }
                        }
                        .tag(2)
                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem{
                            if (selectedIndex != 3) {
                                Image("messages")
                                    .renderingMode(
                                        /*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("bg"))
                            }
                            else{
                                Image("messages")
                            }
                        }
                        .tag(3)
                }
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {
                            self.showCreateTweet.toggle()
                        }, label: {
                            Image("tweet").renderingMode(
                                /*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/).resizable().frame(width: 25, height: 25).padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                }
                .padding(.bottom, 65)
            }
            .sheet(isPresented: $showCreateTweet, content:{
                CreateTweetView(text: text)
            })
        }
    }
}

#Preview {
    Home()
}
