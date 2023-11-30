//
//  MainView.swift
//  Twitter Clone
//
//  Created by Hanaf on 19/11/2023.
//

import SwiftUI

struct MainView: View {
    
    @State var width = UIScreen.main.bounds.width - 90
    @State var x = -UIScreen.main .bounds.width - 90
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                    VStack{
                        TopBar()
                        Home()
                    }
                    SlideMenu()
                        .offset(x: x)
                })
            }
            .navigationBarHidden(true)
            .navigationBarTitle("")
        }
        
    }
}

#Preview {
    MainView()
}
