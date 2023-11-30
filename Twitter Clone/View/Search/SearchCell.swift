//
//  SearchCell.swift
//  Twitter Clone
//
//  Created by Hanaf on 15/11/2023.
//

import SwiftUI

struct SearchCell: View {
    var tag = ""
    var tweets = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("Hello").fontWeight(.heavy)
            Text(tweets + "Tweets").fontWeight(.light)
            
        })
    }
}

#Preview {
    SearchCell()
}
