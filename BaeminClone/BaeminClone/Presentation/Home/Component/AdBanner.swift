//
//  AdBanner.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/26.
//

import Foundation
import UIKit

class AdBanner: BaseView {
    
    let imageView: UIImageView = .init()
    
    override func setContent() {
        imageView.image = UIImage(named: "AdBanner")
    }
    
    override func setStyle() {
        self.layer.cornerRadius = 25
        self.backgroundColor = .clear
        setShadow()
        
        imageView.contentMode = .scaleAspectFit
    }
    
    override func setHierarchy() {
        self.addSubview(imageView)
    }
    
    override func setLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.bottomAnchor.constraint(lessThanOrEqualTo: self.bottomAnchor),
        ])
        
    }
}
