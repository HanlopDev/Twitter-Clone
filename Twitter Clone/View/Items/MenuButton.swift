//
//  MenuButton.swift
//  Twitter Clone
//
//  Created by Hanaf on 20/11/2023.
//

import SwiftUI

struct MenuButton: View {
    var tittle: String
    
    var body: some View {
        HStack(spacing: 15,content: {
            Image(tittle)
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(tittle)
                .foregroundColor(.black)
            Spacer(minLength: 0)
        })
        
        .padding(.vertical, 12)
    }
}


