//
//  HomeHeader.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

class HomeHeader: BaseView {
    
    let container: UIView = .init()
    let addressLabel: UILabel = .init()
    var addressSelectIcon: UIImageView?
    
    let iconContainer: UIStackView = .init()
    var listIcon: UIImageView?
    var searchIcon: UIImageView?
    var bellIcon: UIImageView?
    
    override func setContent() {
        addressLabel.text = "진주시"
        addressLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        addressSelectIcon = UIImageView(image: UIImage(named: "arrow_down")!)
        addressSelectIcon?.tintColor = .black
        
        listIcon = UIImageView(image: UIImage(systemName: "list.dash")!)
        listIcon?.tintColor = .black
        
        searchIcon = UIImageView(image: UIImage(systemName: "magnifyingglass")!)
        searchIcon?.tintColor = .black
        
        bellIcon = UIImageView(image: UIImage(systemName: "bell")!)
        bellIcon?.tintColor = .black
    }
    
    override func setStyle() {
        iconContainer.spacing = 15
        
    }
    
    override func setHierarchy() {
        addSubview(container)
        container.addSubview(addressLabel)
        container.addSubview(iconContainer)
        container.addSubview(addressSelectIcon!)
        iconContainer.addArrangedSubview(listIcon!)
        iconContainer.addArrangedSubview(searchIcon!)
        iconContainer.addArrangedSubview(bellIcon!)
    }
    
    override func setLayout() {
        container.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        addressLabel.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview().inset(30)
        }
        
        addressSelectIcon?.snp.makeConstraints {
            $0.top.equalToSuperview().inset(5)
            $0.leading.equalTo(addressLabel.snp.trailing).offset(5)
            $0.width.equalTo(15)
            $0.height.equalTo(10)
        }
        
        iconContainer.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview().inset(30)
        }
        
        listIcon?.snp.makeConstraints {
            $0.width.height.equalTo(23)
        }
        
        searchIcon?.snp.makeConstraints {
            $0.width.height.equalTo(23)
        }
        
        bellIcon?.snp.makeConstraints {
            $0.width.height.equalTo(23)
        }
    }
}
