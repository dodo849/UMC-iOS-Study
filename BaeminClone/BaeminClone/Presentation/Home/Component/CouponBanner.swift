//
//  CouponBanner.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/23.
//

import Foundation
import UIKit

class CouponBanner: BaseView {
    
    let textLable: UILabel = .init()
    
    override func setContent() {
        // ----- 이부분 extension으로 빼기 ------ //
        let fullText = "집콕러세요? 30% 할인 쿠폰 드려요!"
        let boldRange = (fullText as NSString).range(of: "30% 할인 쿠폰 드려요!")
        let attributedText = NSMutableAttributedString(string: fullText)
        let boldFont = UIFont.boldSystemFont(ofSize: 16)
        attributedText.addAttribute(.font, value: boldFont, range: boldRange)
        // ----- ------- ------ //
        textLable.attributedText = attributedText
    }
    
    override func setStyle() {
        
        self.setRoundedGradientBorder(
            lineWidth: 1,
            cornerRadius: 20,
            colors: [
                UIColor(hex: "74F9FD").cgColor,
                UIColor(hex: "AE47F6").cgColor,
                UIColor(hex: "2355F5").cgColor
            ]
        )
        self.setShadow()
        
    }
    
    override func setHierarchy() {
        self.addSubview(textLable)
    }
    
    override func setLayout() { 
        textLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLable.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textLable.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}
