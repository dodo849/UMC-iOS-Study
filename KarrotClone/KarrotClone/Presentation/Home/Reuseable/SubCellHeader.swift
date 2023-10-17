//
//  SubCellHeader.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/17/23.
//

import Foundation
import UIKit

/// 홈 화면 TableView의 가로 스크롤을 위한 Cell
class SubCellHeader: BaseView {
    
    let stackContainer = UIStackView()
    
    let titleLabel = UILabel()
    let detailButton = UIButton()
    
    override func setContent() {
        titleLabel.text = "오늘의 추천 상품 🕶️"
                detailButton.setImage(UIImage(named: "arrow.right"), for: .normal)
    }
    
    override func setStyle() {
        stackContainer.distribution = .fill
        stackContainer.axis = .horizontal
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    override func setHierarchy() {
        addSubview(stackContainer)
        stackContainer.addArrangedSubview(titleLabel)
        stackContainer.addArrangedSubview(detailButton)
    }
    
    override func setLayout() {
        stackContainer.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
