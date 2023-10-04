//
//  Search.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/23.
//

import Foundation
import UIKit

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
        container.layer.cornerRadius = 20
        
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
        container.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            container.topAnchor.constraint(equalTo: self.topAnchor),
            container.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addressLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 30),
            addressLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 70),
        ])
        
        cartIcon!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartIcon!.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            cartIcon!.topAnchor.constraint(equalTo: container.topAnchor, constant: 70),
            cartIcon!.widthAnchor.constraint(equalToConstant: 25),
            cartIcon!.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        bellIcon!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bellIcon!.trailingAnchor.constraint(equalTo: cartIcon!.leadingAnchor, constant: -30),
            bellIcon!.topAnchor.constraint(equalTo: container.topAnchor, constant: 70),
            bellIcon!.widthAnchor.constraint(equalToConstant: 25),
            bellIcon!.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        menuIcon!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            menuIcon!.trailingAnchor.constraint(equalTo: bellIcon!.leadingAnchor, constant: -30),
            menuIcon!.topAnchor.constraint(equalTo: container.topAnchor, constant: 70),
            menuIcon!.widthAnchor.constraint(equalToConstant: 25),
            menuIcon!.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        searchBarContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBarContainer.topAnchor.constraint(equalTo: addressLabel.topAnchor, constant: 45),
            searchBarContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            searchBarContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            searchBarContainer.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: searchBarContainer.topAnchor),            searchBar.bottomAnchor.constraint(equalTo: searchBarContainer.bottomAnchor),
            searchBar.leadingAnchor.constraint(equalTo: searchBarContainer.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: searchBarContainer.trailingAnchor),
        ])
        
    }
}
