//
//  CartViewController.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 11/8/23.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var price: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = false

        priceLabel.text = "· 가격: \(price)"
    }
    
}
