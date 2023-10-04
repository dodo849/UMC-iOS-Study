//
//  Search.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/23.
//

import Foundation
import UIKit

import Then
import SnapKit

class SearchHeader: BaseView {
    
    let container: UIView = .init()
    let addressLabel: UILabel = .init()
    
    var menuIcon: UIImageView?
    var bellIcon: UIImageView?
    var cartIcon: UIImageView?
    
    let searchBarContainer: UIView = .init()
    let searchBar: UISearchBar = .init()
    
    override func setContent() {
        addressLabel.text = "우리집"
        
        menuIcon = UIImageView(image: UIImage(systemName: "square.split.2x2")!)
        bellIcon = UIImageView(image: UIImage(systemName: "bell")!)
        cartIcon = UIImageView(image: UIImage(systemName: "cart")!)
        
        searchBar.placeholder = "찾는 맛집 이름이 뭐예요?"
    }
    
    
    override func setStyle() {
        
        container.backgroundColor = UIColor.mainMint
        let cornerRadius: CGFloat = 20.0
        container.clipsToBounds = true
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: container.bounds,
                                      byRoundingCorners: [.bottomLeft, .bottomRight],
                                      cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        container.layer.mask = maskLayer
        
        addressLabel.font = UIFont.boldSystemFont(ofSize: 20)
        addressLabel.textAlignment = .left
        addressLabel.textColor = .white
        
        menuIcon?.tintColor = .white
        bellIcon?.tintColor = .white
        cartIcon?.tintColor = .white
        
        searchBarContainer.backgroundColor = .white
        searchBarContainer.layer.cornerRadius = 3
        
        searchBar.searchTextField.leftView?.tintColor = .mainMint
        searchBar.searchTextField.backgroundColor = .white
    }
    
    override func setHierarchy() {
        self.addSubview(container)
        container.addSubview(addressLabel)
        container.addSubview(menuIcon!)
        container.addSubview(bellIcon!)
        container.addSubview(cartIcon!)
        container.addSubview(searchBarContainer)
        searchBarContainer.addSubview(searchBar)
        
    }
    
    override func setLayout() {
        
        // Origin ⬇️
        container.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            container.topAnchor.constraint(equalTo: self.topAnchor),
            container.heightAnchor.constraint(equalToConstant: 170)
        ])
        
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addressLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 30),
            addressLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 60),
        ])

        // Then ⬇️
        cartIcon!.do {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
            $0.topAnchor.constraint(equalTo: container.topAnchor, constant: 60).isActive = true
            $0.widthAnchor.constraint(equalToConstant: 25).isActive = true
            $0.heightAnchor.constraint(equalToConstant: 25).isActive = true
        }

        bellIcon!.do {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.trailingAnchor.constraint(equalTo: cartIcon!.leadingAnchor, constant: -30).isActive = true
            $0.topAnchor.constraint(equalTo: container.topAnchor, constant: 60).isActive = true
            $0.widthAnchor.constraint(equalToConstant: 25).isActive = true
            $0.heightAnchor.constraint(equalToConstant: 25).isActive = true
        }

        // Snapkit ⬇️
        menuIcon!.snp.makeConstraints { make in
            make.trailing.equalTo(bellIcon!.snp.leading).offset(-30)
            make.top.equalTo(container.snp.top).offset(60)
            make.width.equalTo(25)
            make.height.equalTo(25)
        }

        searchBarContainer.snp.makeConstraints { make in
            make.top.equalTo(addressLabel.snp.top).offset(45)
            make.leading.equalTo(self.snp.leading).offset(30)
            make.trailing.equalTo(self.snp.trailing).offset(-30)
            make.height.equalTo(45)
        }

        searchBar.snp.makeConstraints { make in
            make.edges.equalTo(searchBarContainer)
        }
        
    }
}
