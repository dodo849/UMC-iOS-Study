//
//  BulkDiscountSection.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/26.
//

import Foundation
import UIKit

class BulkDiscountSection: BaseView {
    
    let container: UIView = .init()
    
    let titleLabel: UILabel = .init()
    let bodyLabel: UILabel = .init()
    let imageView: UIImageView = .init()
    
    override func setContent() {
        titleLabel.text = "대용량특가"
        bodyLabel.text = "많이 살수록 더 저렴하죠"
        
        imageView.image = UIImage(named: "BulkDiscountImage")
    }
    
    override func setStyle() {
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
        setShadow()
        
        titleLabel.font = UIFont(name: "BMHANNAPro", size: 18.0)
        titleLabel.textAlignment = .left
        
        bodyLabel.font = .systemFont(ofSize: 14)
        bodyLabel.numberOfLines = 2
        bodyLabel.textAlignment = .left
        
        imageView.contentMode = .scaleAspectFit
    }
    
    override func setHierarchy() {
        self.addSubview(titleLabel)
        self.addSubview(bodyLabel)
        self.addSubview(imageView)
    }
    
    override func setLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            
            bodyLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 10),
            bodyLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: bodyLabel.bottomAnchor, constant: 10),
            imageView.bottomAnchor.constraint(lessThanOrEqualTo: self.bottomAnchor, constant: -20),
        ])
        
    }
}
