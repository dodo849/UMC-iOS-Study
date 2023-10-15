//
//  HorizonScrollTableViewCell.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/15/23.
//

import Foundation
import UIKit

import Kingfisher

class HorizonScrollSellTableViewCell: BaseTableViewCell {
    
    // MARK: UI Component
    private let container: UIView = .init()
    private let scrollView: UIScrollView = .init()
    private let scrollContentView: UIStackView = .init()
    
    // MARK: Constant
    let screenWidth = UIScreen.main.bounds.size.width
    // 스크롤 뷰 안에 반복되는 셀을 'SubCell'로 지칭
    let subCellHeight: CGFloat = 150
    let subCellWidth: CGFloat = 100
    let subCellNum: Int = 10
    let subCellSpacing: CGFloat = 10
    
    // MARK: Override Method
    override func setContent() {
        // SubCell 넣기
        for _ in 0..<subCellNum {
            scrollContentView.addArrangedSubview(createSubCell())
        }

    }
    
    override func setStyle() {
        scrollContentView.frame = CGRect(
            x: 0,
            y: 0,
            width: (subCellWidth + subCellSpacing) * CGFloat(subCellNum),
            height: subCellHeight
        ) // width는 셀 갯수와 너비로 계산
        scrollContentView.spacing = subCellSpacing
        
        scrollView.contentSize = scrollContentView.frame.size
        scrollView.showsHorizontalScrollIndicator = false
    }
    
    override func setHierarchy() {
        contentView.addSubview(container)
        container.addSubview(scrollView)
        scrollView.addSubview(scrollContentView)

    }
    
    override func setLayout() {
        container.snp.makeConstraints{
            $0.edges.equalToSuperview()
            $0.height.equalTo(subCellHeight)
        }
        
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    /// 셀의 데이터를 설정하는 메서드입니다.
    func configure(_ data: SellProductModel) {

        
    }
    
    /// 셀에 이미지를 설정하는 메서드입니다. fade in/out 애니메이션이 적용됩니다.
    func imageConfigure(image: UIImage) {

    }
}


extension HorizonScrollSellTableViewCell {
    /// SubCell을 만드는 함수
    ///
    /// 편의를 위해 BaseView 를 이용하지 않고 함수로만 작성
    func createSubCell() -> UIView {
        // define
        let stackContainer = UIStackView()
        
        let productImage = UIImageView()
        let titleLabel = UILabel()
        let priceLabel = UILabel()
        
        //content
        productImage.image = createDefaultImage()
        titleLabel.text = "테스트"
        priceLabel.text = "테스트중입니당"
        
        // style
        stackContainer.distribution = .fillProportionally
        stackContainer.axis = .vertical
        stackContainer.spacing = 3
        stackContainer.layoutMargins = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        stackContainer.isLayoutMarginsRelativeArrangement = true
        
        productImage.layer.cornerRadius = 10
        productImage.contentMode = .scaleAspectFill
        productImage.clipsToBounds = true
        
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        
        priceLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        // hierarchy
        stackContainer.addArrangedSubview(productImage)
        stackContainer.addArrangedSubview(titleLabel)
        stackContainer.addArrangedSubview(priceLabel)
        
        //layout
        stackContainer.snp.makeConstraints{
            $0.width.equalTo(subCellWidth)
            $0.height.equalTo(subCellHeight)
        }
        
        productImage.snp.makeConstraints{
            $0.width.equalTo(subCellWidth-30)
            $0.height.equalTo(subCellWidth-10)
        }
        
        return stackContainer
    }
}
