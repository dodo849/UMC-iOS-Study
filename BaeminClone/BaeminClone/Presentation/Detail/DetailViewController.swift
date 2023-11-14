//
//  DetailViewController.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 11/7/23.
//

import UIKit

class DetailViewController: BaseViewController {

    @IBOutlet weak var priceMRadio: UIView!
    
    @IBOutlet weak var priceLRadio: UIView!
    
    @IBOutlet weak var cartButton: UIButton!
    
    var selected: [Bool] = [false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureM = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        priceMRadio.addGestureRecognizer(tapGestureM)
        priceMRadio.isUserInteractionEnabled = true
        priceLRadio.addGestureRecognizer(tapGestureM)
        
        let tapGestureL = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        priceLRadio.addGestureRecognizer(tapGestureL)
        priceLRadio.isUserInteractionEnabled = true
    }
    
    
    
    @IBAction func tapCartButton(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goCartSegue" {
            let vc = segue.destination as! CartViewController
            vc.price = selected[0] ? "20,000원" : "23,000원"
            print("얍얍")
        } }
    

    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if sender.view == priceMRadio {
            // priceMRadio를 탭했을 때 실행할 코드
            cartButton.setTitle("20,000원 담기", for: .normal)
            if selected[0] {
                priceMRadio.backgroundColor = .systemGray6
                selected[0] = false
            } else {
                priceMRadio.backgroundColor = .mainMint
                selected[0] = true
            }
            
            priceLRadio.backgroundColor = .systemGray6
            selected[1] = false
        } else if sender.view == priceLRadio {
            cartButton.setTitle("23,000원 담기", for: .normal)
            // priceLRadio를 탭했을 때 실행할 코드
            if selected[1] {
                priceLRadio.backgroundColor = .systemGray6
                selected[1] = false
            } else {
                priceLRadio.backgroundColor = .mainMint
                selected[1] = true
            }
            
            priceMRadio.backgroundColor = .systemGray6
            selected[0] = false
        }
    }
    
}
