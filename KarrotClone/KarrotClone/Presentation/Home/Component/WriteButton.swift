//
//  WriteButton.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

import SnapKit

class WirteButton: BaseView {
    
    let button: UIButton = .init()
    
    override func setContent() { 
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.imageView?.tintColor = .white
        button.setTitle("글쓰기", for: .normal)
    }
    
    override func setStyle() { 
        button.layer.cornerRadius = self.frame.height / 2
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .mainOrange
        button.configuration?.imagePadding = 5
        button.configuration?.titlePadding = 5
        button.contentEdgeInsets = UIEdgeInsets(
            top: 15,
            left: 20,
            bottom: 15,
            right: 20
        )
        button.configuration?.imagePadding = 10
        // 그림자 설정
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.1
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        button.layer.shadowRadius = 5
        layer.shadowPath = UIBezierPath(rect: layer.bounds).cgPath // 그림자 모양 설정
                
    }
    
    override func setHierarchy() {
        addSubview(button)
    }
    
    override func setLayout() { 
        button.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
