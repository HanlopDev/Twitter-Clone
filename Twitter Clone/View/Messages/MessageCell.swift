//
//  MessageCell.swift
//  Twitter Clone
//
//  Created by Hanaf on 19/11/2023.
//

import SwiftUI

struct MessageCell: View {
    
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading, spacing: nil,
               content: {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.blue)
                .opacity(0.8)
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0,
                       content: {
                    HStack{
                        Text("Hanlop ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("@hanlop_Dev")
                            .foregroundColor(.gray)
                        
                        Spacer(minLength: 0)
                        
                        Text("6/20/23")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    Text("You: Hey how is it going")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                })
            }
            .padding(.top, 2)
        })
        .frame(width: width, height: 84)
    }
}

#Preview {
    MessageCell()
}
