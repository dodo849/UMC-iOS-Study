//
//  TextView+Extension.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/15/23.
//

import Foundation
import UIKit

extension UILabel {
    func calculateTextViewHeight() -> CGFloat {
        let sizeThatFits = self.sizeThatFits(CGSize(width: 100, height: CGFloat.greatestFiniteMagnitude))
        return sizeThatFits.height
    }
}
