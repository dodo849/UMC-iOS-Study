//
//  BaseTableViewCell.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

class BaseTableViewCell: UITableViewCell {
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setContent()
        setStyle()
        setHierarchy()
        setLayout()
        setBind()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setContent() { }
    
    func setStyle() { }
    
    func setHierarchy() { }
    
    func setLayout() { }
    
    func setBind() { }
}
