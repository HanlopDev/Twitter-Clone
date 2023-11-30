//
//  CreateTweetView.swift
//  Twitter Clone
//
//  Created by Hanaf on 10/11/2023.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text = ""
    var body: some View {
        VStack{
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Tweet").padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

#Preview {
    CreateTweetView()
}
