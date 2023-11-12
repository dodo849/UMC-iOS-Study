//
//  Ball.swift
//  OpenSourceAnimation
//
//  Created by DOYEON LEE on 11/13/23.
//

import Foundation
import UIKit

@IBDesignable
class Ball: UIView {

    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
