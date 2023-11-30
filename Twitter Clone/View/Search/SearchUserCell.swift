//
//  SearchUserCell.swift
//  Twitter Clone
//
//  Created by Hanaf on 19/11/2023.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Hanlop")
                    .fontWeight(.heavy)
                Text("Hanlop_Dev")
            }
            
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    SearchUserCell()
}
