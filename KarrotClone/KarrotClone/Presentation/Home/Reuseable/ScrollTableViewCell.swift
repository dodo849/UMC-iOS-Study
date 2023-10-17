//
//  HorizonScrollTableViewCell.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/15/23.
//

import Foundation
import UIKit

import Kingfisher

// MARK: Global Constant
let subCellHeight: CGFloat = 150
let subCellWidth: CGFloat = 100
let subCellSpacing: CGFloat = 10
let subCellContainerVerticalPadding: CGFloat = 20

/// 가로 방향으로 스크롤되는 Table View Cell 입니다.
class ScrollTableViewCell: BaseTableViewCell {
    
    // MARK: UI Component
    private let container: UIView = .init()
    private let subCellHeader: SubCellHeader = .init()
    private let scrollView: UIScrollView = .init()
    private let scrollContentStackView: UIStackView = .init()
    private var subCells: [SubCell] = []
    
    // MARK: Constant
    let screenWidth = UIScreen.main.bounds.size.width
    
    // MARK: Override Method
    override func setContent() {
    }
    
    override func setStyle() {
        scrollContentStackView.distribution = .equalSpacing
        scrollView.showsHorizontalScrollIndicator = false
        
        setScrollContentWidth(10) // 임시로 10개정도 생성
    }
    
    override func setHierarchy() {
        contentView.addSubview(container)
        container.addSubview(subCellHeader)
        container.addSubview(scrollView)
        scrollView.addSubview(scrollContentStackView)
    }
    
    override func setLayout() {
        container.snp.makeConstraints{
            $0.edges.equalToSuperview().inset(10)
//            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(subCellHeight+30)
        }
        
        subCellHeader.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(30)
        }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(subCellHeader.snp.bottom).offset(5)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.lessThanOrEqualToSuperview()
        }
    }

    /// 셀의 데이터를 설정하는 메서드입니다.
    func configure(_ data: [SellProductModel]) {
        setScrollContentWidth(data.count)
        
        // SubCell 넣기
        for _ in 0..<data.count {
            let subCell = SubCell()
            subCells.append(subCell)
            scrollContentStackView.addArrangedSubview(subCell)
        }
        
        _ = data.enumerated().map { (index, element) in
            self.subCells[index].productImage.kf.setImage(with: URL(string: element.imageURL))
            self.subCells[index].titleLabel.text = element.title
            self.subCells[index].priceLabel.text = "\(element.price) 원"
        }
    }
    
    /// 가로 스크롤뷰의 컨텐츠 뷰 너비를 정하는 메서드입니다.
    ///
    /// - Note: 셀 초기화 시점이 아닌 데이터 주입 시점에 컨텐츠 뷰 너비를 설정하기 위해 사용합니다.
    private func setScrollContentWidth(_ contentCount: Int) {
        self.scrollContentStackView.frame = CGRect(
            x: 0,
            y: 0,
            width: (subCellWidth + subCellSpacing) * CGFloat(contentCount),
            height: subCellHeight-10 // FIXME: 왜 조금 빼줘야 세로 스크롤이 막히는지 모르겠음
        ) // width는 셀 갯수와 너비로 계산
        print("###\(self.scrollContentStackView.frame) \(self.scrollView.contentSize)")
        self.scrollView.contentSize = self.scrollContentStackView.frame.size
    }
}
