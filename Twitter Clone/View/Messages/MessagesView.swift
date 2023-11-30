//
//  MessagesView.swift
//  Twitter Clone
//
//  Created by Hanaf on 10/11/2023.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<9) { _ in
                    MessageCell()
                }
            }
        }
    }
}

#Preview {
    MessagesView()
}
