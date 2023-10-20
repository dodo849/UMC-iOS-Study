//
//  SubCell.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/17/23.
//

import Foundation
import UIKit

/// 홈 화면 TableView의 가로 스크롤을 위한 Cell
class SubCell: BaseView {
    
    let stackContainer = UIStackView()
    
    let productImage = UIImageView()
    let titleLabel = UILabel()
    let priceLabel = UILabel()
    
    override func setContent() {
        productImage.setDefaultImage()
        titleLabel.text = "테스트"
        priceLabel.text = "테스트중입니당"
    }
    
    override func setStyle() {
        stackContainer.axis = .vertical
        stackContainer.distribution = .equalSpacing
        
        productImage.layer.cornerRadius = 10
        productImage.contentMode = .scaleAspectFill
        productImage.clipsToBounds = true
        
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        
        priceLabel.font = UIFont.boldSystemFont(ofSize: 14)
    }
    
    override func setHierarchy() {
        self.addSubview(stackContainer)
        stackContainer.addArrangedSubview(productImage)
        stackContainer.addArrangedSubview(titleLabel)
        stackContainer.addArrangedSubview(priceLabel)
    }
    
    override func setLayout() {
        self.snp.makeConstraints {
            $0.width.equalTo(subCellWidth)
        }
        
        stackContainer.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        productImage.snp.makeConstraints{
            $0.width.equalTo(subCellWidth-30)
            $0.height.equalTo(subCellWidth-10)
        }
    }
}
