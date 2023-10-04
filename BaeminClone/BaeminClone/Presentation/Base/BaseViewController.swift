//
//  BaseViewController.swift
//  HumanscapeShoppingMall
//
//  Created by DOYEON LEE on 2023/05/30.
//

import Foundation
import UIKit

protocol BaseViewControllerProtocol: AnyObject {
    func setContent()
    func setStyle()
    func setDelegate()
    func setHierarchy()
    func setLayout()
    func setBind()
}

class BaseViewController: UIViewController, BaseViewControllerProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setStyle()
        setDelegate()
        setHierarchy()
        setLayout()
        setBind()
    }
    
    func setContent() { }

    func setStyle() { }
    
    func setDelegate() { }
    
    func setHierarchy() { }
    
    func setLayout() { }
    
    func setBind() { }
}
