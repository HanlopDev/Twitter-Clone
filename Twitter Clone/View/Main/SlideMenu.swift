//
//  SlideMenu.swift
//  Twitter Clone
//
//  Created by Hanaf on 19/11/2023.
//

import SwiftUI

struct SlideMenu: View {
    @State var show = false
    @State var width = UIScreen.main.bounds.width
    var menuButton = ["Profile", "List", "Topics", "Bookmark", "Moments"]
    var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        VStack{
            HStack( spacing: 0,
                    content: {
                VStack(alignment: .leading, content: {
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    HStack(alignment: .top, spacing: 12,
                           content: {
                        VStack(alignment: .leading, spacing: 12, content: {
                            Text("Hanlop")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                            
                            Text("@Hanlop_Dev")
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 20, content: {
                                FollowView(count: 8, tittle: "Following")
                                FollowView(count: 13, tittle: "Followers")
                            })
                            .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                        })
                        
                        Spacer(minLength: 0)
                        
                        Button(
                            action: {
                                withAnimation{
                                    self.show.toggle()
                                }
                            },
                               label: {
                            Image(systemName: show ? "chevron.down"
                                  : "chevron.up")
                                .foregroundColor(Color("bg"))
                        })
                    })
                    
                    VStack(alignment: .leading, content: {
                        ForEach(menuButton, id:\.self) { item in
                            MenuButton(tittle: item)
                        }
                        
                        Divider()
                            .padding(.top)
                        
                        Button(action: {
                            
                        }, label: {
                            MenuButton(tittle: "Twiter Ads")
                        })
                        
                        Divider()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("setting and Privacy")
                                .foregroundColor(.black)
                        })
                        .padding(.top, 20)
                        
                        Button(action: {}, label: {
                            Text("Help centre")
                                .foregroundColor(.black)
                        })
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)
                        
                        HStack{
                            Button(action: {}, label: {
                                Image("help")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                            })
                            Spacer(minLength: 0)
                            
                            Image("barcode")
                                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                .resizable()
                                .frame(width:26, height: 26)
                                .foregroundColor(Color("bg"))
                        }
                        
                    })
                    
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack (alignment: .leading, content: {
                        Button(action: {
                            
                        }, label: {
                            Text("Create new account")
                                .foregroundColor(Color("bg"))
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("Add an existing account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Spacer(minLength: 0)
                    })
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                    
                    
                })
                .padding(.horizontal, 20)
                .padding(.top, edge!.top == 0 ? 15 : edge?.top)
                .padding(.bottom, edge!.bottom == 0 ? 15 : edge?.bottom)
                .frame(width: width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
                
            })
        }
    }
}

#Preview {
    SlideMenu()
}
