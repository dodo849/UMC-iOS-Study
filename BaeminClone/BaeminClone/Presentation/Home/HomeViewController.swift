//
//  HomeViewController.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/23.
//

import Foundation
import UIKit


class HomeViewController: BaseViewController {
    
    let container: UIView = .init()
    
    let searchHeader: SearchHeader = .init()
    let couponBanner: CouponBanner = .init()
    let serviceCategorySection: ServiceCategorySection = .init()
    let bulkDiscountSection : BulkDiscountSection = .init()
    let adBanner: AdBanner = .init()
    

    override func setStyle() {
//        container.showsVerticalScrollIndicator = false
        container.backgroundColor = .mainGray
        
    }
    
    override func setHierarchy() {
        view.addSubview(container)
        container.addSubview(searchHeader)
        container.addSubview(couponBanner)
        container.addSubview(serviceCategorySection)
        container.addSubview(bulkDiscountSection)
        container.addSubview(adBanner)
    }
    
    override func setLayout() {
        
        container.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            container.topAnchor.constraint(equalTo: view.topAnchor),
            container.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        searchHeader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchHeader.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            searchHeader.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            searchHeader.topAnchor.constraint(equalTo: container.topAnchor),
            searchHeader.heightAnchor.constraint(equalToConstant: 180)
        ])

        couponBanner.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            couponBanner.topAnchor.constraint(equalTo: searchHeader.bottomAnchor, constant: 20),
            couponBanner.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 20),
            couponBanner.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20),
            couponBanner.heightAnchor.constraint(equalToConstant: 80)
        ])
        couponBanner.layoutSubviews()
        
        serviceCategorySection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            serviceCategorySection.topAnchor.constraint(equalTo: couponBanner.bottomAnchor, constant: 20),
            serviceCategorySection.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 20),
            serviceCategorySection.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20),
            serviceCategorySection.heightAnchor.constraint(equalToConstant: 140)
        ])
        
        bulkDiscountSection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bulkDiscountSection.topAnchor.constraint(equalTo: serviceCategorySection.bottomAnchor, constant: 20),
            bulkDiscountSection.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 20),
            bulkDiscountSection.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20),
            bulkDiscountSection.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        adBanner.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adBanner.topAnchor.constraint(equalTo: bulkDiscountSection.bottomAnchor, constant: 20),
            adBanner.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 20),
            adBanner.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20),
            adBanner.heightAnchor.constraint(equalToConstant: 120)
        ])

    }
}
