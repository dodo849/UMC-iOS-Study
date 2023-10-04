//
//  ServiceCategorySection.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/25.
//

import Foundation
import UIKit

class ServiceCategorySection: BaseView {
    
    let stackContainer: UIStackView = .init()
    
    let thriftyDeliveryCard: ServiceCategoryCard = .init()
    let normalDeliveryCard: ServiceCategoryCard = .init()
    let baeminStoreCard: ServiceCategoryCard = .init()
    
    
    override func setContent() {
        thriftyDeliveryCard.titleLabel.text = "알뜰배달"
        thriftyDeliveryCard.bodyLabel.text = "쿠폰 골라 받기"    
        
        normalDeliveryCard.titleLabel.text = "배달"
        normalDeliveryCard.bodyLabel.text = "세상은 넓고\n맛집은 많다"
        
        baeminStoreCard.titleLabel.text = "배민스토어"
        baeminStoreCard.bodyLabel.text = "배달은 지금\n옵니다"
    }
    
    override func setStyle() {
        self.backgroundColor = .clear
        
        stackContainer.axis = .horizontal
        stackContainer.spacing = 10
        stackContainer.distribution = .fillEqually
        
    }
    
    override func setHierarchy() {
        self.addSubview(stackContainer)
        stackContainer.addArrangedSubview(thriftyDeliveryCard)
        stackContainer.addArrangedSubview(normalDeliveryCard)
        stackContainer.addArrangedSubview(baeminStoreCard)
    }
    
    override func setLayout() {
        stackContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackContainer.topAnchor.constraint(equalTo: self.topAnchor),
            stackContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
