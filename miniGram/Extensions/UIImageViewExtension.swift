//
//  UIImageViewExtension.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 9/5/23.
//

import Foundation
import UIKit

extension UIImageView {
    
    func makeImageViewRounded () {
        self.layer.cornerRadius = self.layer.frame.width / 2.0
        self.clipsToBounds = true
    }
}
