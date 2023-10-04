//
//  ServiceCategoryCard.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/25.
//

import Foundation
import UIKit

class ServiceCategoryCard: BaseView {
    
    let titleLabel: UILabel = .init()
    let bodyLabel: UILabel = .init()
    
    override func setContent() {
    }
    
    override func setStyle() {
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
        self.setShadow()
        
        // ⚠️ 폰트 설정시엔 폰트 파일의 Target Membership 꼭 체크하기
        titleLabel.font = UIFont(name: "BMHANNAPro", size: 18.0)
        titleLabel.textAlignment = .left
        
        bodyLabel.font = .systemFont(ofSize: 14)
        bodyLabel.numberOfLines = 2
        bodyLabel.textAlignment = .left
        
    }
    
    override func setHierarchy() {
        self.addSubview(titleLabel)
        self.addSubview(bodyLabel)
    }
    
    override func setLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 15),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
        ])
        
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bodyLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            bodyLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 15),
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 7),
        ])

    }
}
