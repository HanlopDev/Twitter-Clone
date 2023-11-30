//
//  FollowView.swift
//  Twitter Clone
//
//  Created by Hanaf on 20/11/2023.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var tittle: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
            
            Text(tittle)
                .foregroundColor(.gray)
            
            
        }
    }
}

