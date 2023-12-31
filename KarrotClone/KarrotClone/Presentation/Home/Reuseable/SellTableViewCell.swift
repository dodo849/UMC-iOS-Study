//
//  SellTableViewCell.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

import Kingfisher

class SellTableViewCell: BaseTableViewCell {
    
    // MARK: UI Component
    private let container: UIView = .init()
    
    private var productImage: UIImageView = .init()
    private let titleLabel: UILabel = .init()
    private let addressAndTimeLabel: UILabel = .init()
    private var priceLabel: UILabel = .init()
    
    private let reactionContainer: UIStackView = .init()
    private var chatIcon: UIImageView = .init()
    private let chatLabel: UILabel = .init()
    private var wishIcon: UIImageView = .init()
    private let wishLabel: UILabel = .init()
    
    
    // MARK: Override Method
    override func setContent() {
        
        chatIcon = UIImageView(image: UIImage(systemName: "message.badge")!)
        chatIcon.tintColor = .gray
        
        wishIcon = UIImageView(image: UIImage(systemName: "heart")!)
        wishIcon.tintColor = .gray

    }
    
    override func setStyle() {
        
        // 임시 이미지
        productImage.contentMode = .scaleAspectFill
        productImage.clipsToBounds = true
        productImage.setDefaultImage()
        productImage.layer.cornerRadius = 10
        productImage.layer.borderWidth = 0.5 // 테두리 두께
        productImage.layer.borderColor = UIColor.systemGray.withAlphaComponent(0.3).cgColor
        
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 2
        titleLabel.lineBreakMode = .byTruncatingTail
        
        addressAndTimeLabel.font = UIFont.systemFont(ofSize: 13)
        addressAndTimeLabel.textColor = .gray
        addressAndTimeLabel.textAlignment = .left
        addressAndTimeLabel.numberOfLines = 1
        addressAndTimeLabel.lineBreakMode = .byTruncatingTail
        
        priceLabel.font = UIFont.boldSystemFont(ofSize: 15)
        priceLabel.textAlignment = .left
        priceLabel.numberOfLines = 1
        priceLabel.lineBreakMode = .byTruncatingTail
        
        reactionContainer.spacing = 5
        
        chatLabel.font = UIFont.systemFont(ofSize: 13)
        chatLabel.textColor = .darkGray
        
        wishLabel.font = UIFont.systemFont(ofSize: 13)
        wishLabel.textColor = .darkGray
    }
    
    override func setHierarchy() {
        contentView.addSubview(container)
        container.addSubview(productImage)
        container.addSubview(addressAndTimeLabel)
        container.addSubview(titleLabel)
        container.addSubview(priceLabel)
        container.addSubview(reactionContainer)
        reactionContainer.addArrangedSubview(chatIcon)
        reactionContainer.addArrangedSubview(chatLabel)
        reactionContainer.addArrangedSubview(wishIcon)
        reactionContainer.addArrangedSubview(wishLabel)
    }
    
    override func setLayout() {
    
        container.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        productImage.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(10)
            $0.leading.equalToSuperview().inset(5)
            $0.height.width.equalTo(100)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.leading.equalTo(productImage.snp.trailing).offset(15)
        }
        
        addressAndTimeLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(5)
            $0.leading.equalTo(productImage.snp.trailing).offset(15)
        }
        
        
        priceLabel.snp.makeConstraints {
            $0.top.equalTo(addressAndTimeLabel.snp.bottom).offset(5)
            $0.leading.equalTo(productImage.snp.trailing).offset(15)
        }
        
        reactionContainer.snp.makeConstraints {
            $0.trailing.bottom.equalToSuperview().inset(10)
        }
        
        chatIcon.snp.makeConstraints {
            $0.width.height.equalTo(19)
        }
        
        wishIcon.snp.makeConstraints {
            $0.height.equalTo(28)
            $0.width.equalTo(22)
        }
    }

    /// 셀의 데이터를 설정하는 메서드입니다.
    func configure(_ data: SellProductModel) {
        // URLSession 방식
//        self.productImage.setImageWithURL(data.imageURL)
        // 캐싱 라이브러리 적용
        self.productImage.kf.setImage(with: URL(string: data.imageURL))
        
        self.titleLabel.text = data.title
        self.priceLabel.text = data.price
        self.addressAndTimeLabel.text = "\(data.address) · \(data.time)"
        self.chatLabel.text = "\(data.chatNum)"
        self.wishLabel.text = "\(data.wishNum)"
        
    }
}
