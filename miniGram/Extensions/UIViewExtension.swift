//
//  UIViewExtension.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 9/5/23.
//

import Foundation
import UIKit

extension UIView {
    
    func addCornerToView (radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
}
