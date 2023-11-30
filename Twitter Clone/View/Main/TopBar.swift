//
//  TopBar.swift
//  Twitter Clone
//
//  Created by Hanaf on 19/11/2023.
//

import SwiftUI

struct TopBar: View {
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    
                },
                       label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                })
                
                Spacer(minLength: 0)
                
                Image("twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 25, height: 25)
                
                Spacer(minLength: 0)
            }
            .padding()
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color.white)
    }
}

#Preview {
    TopBar()
}
