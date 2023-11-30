//
//  NotificationView.swift
//  Twitter Clone
//
//  Created by Hanaf on 10/11/2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            ScrollView {
                ForEach(0..<9) { _ in
                    NotificationCell()
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
