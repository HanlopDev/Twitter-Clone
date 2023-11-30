//
//  Extensions.swift
//  Twitter Clone
//
//  Created by Hanaf on 19/11/2023.
//

import Foundation
import UIKit

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


