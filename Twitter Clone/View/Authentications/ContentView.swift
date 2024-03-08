//
//  ContentView.swift
//  Twitter Clone
//
//  Created by Hanaf on 10/11/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment var viewModel: AuthViewModel
    
    var body: some View {
        if viewModel.isAuthenticated{
            if let user = viewModel.currentUser {
                MainView(user: user)
            }
        }
        else{
            WelcomeView()
        }
    }
}

#Preview {
    ContentView(viewModel: <#Environment<AuthViewModel>#>)
}
