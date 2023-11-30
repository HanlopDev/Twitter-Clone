//
//  SearchBar.swift
//  Twitter Clone
//
//  Created by Hanaf on 15/11/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search Tweet", text: $text)
                .padding(8)
                .padding(.horizontal, 26)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 0)
                    }
                )
            Button(action: {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 0)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
            })
        }
        .onTapGesture {
            isEditing = true
        }
    }
}

//#Preview {
//    SearchBar(text: "Hanlop")
//}
