//
//  BaseView.swift
//  HumanscapeShoppingMall
//
//  Created by DOYEON LEE on 2023/05/30.
//

import Foundation
import UIKit

protocol BaseViewProtocol {
    func setContent()
    func setStyle()
    func setHierarchy()
    func setLayout()
}

class BaseView: UIView, BaseViewProtocol {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setContent()
        setStyle()
        setHierarchy()
        setLayout()
    }
    
    func setContent() { }
    
    func setStyle() { }
    
    func setHierarchy() { }
    
    func setLayout() { }
}
