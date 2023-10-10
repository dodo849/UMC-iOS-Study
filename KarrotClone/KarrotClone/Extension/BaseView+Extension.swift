//
//  BaseView+Extension.swift
//  BaeminClone
//
//  Created by DOYEON LEE on 2023/09/25.
//

import Foundation
import UIKit

extension BaseView {
    func setRoundedGradientBorder(
        lineWidth: CGFloat,
        cornerRadius: CGFloat,
        colors: [CGColor]
    ) {
        // UIView의 배경색과 라운드 코너 설정
        self.backgroundColor = .white
        self.layer.cornerRadius = cornerRadius
        
        // 그라데이션 레이어 생성
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        
        // 그라데이션 색상 설정 (2가지 색상을 섞음)
        gradientLayer.colors = colors // 원하는 색상으로 변경
        
        // 그라데이션 방향 설정
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        // CAShapeLayer를 생성하여 라운드 코너 설정
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(
            roundedRect: self.bounds.insetBy(dx: lineWidth, dy: lineWidth),
            cornerRadius: cornerRadius
        ).cgPath
        maskLayer.lineWidth = lineWidth
        maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        
        // 그라데이션 레이어의 마스크로 설정
        gradientLayer.mask = maskLayer
        
        // 그라데이션 레이어를 UIView의 하위 레이어로 추가
        self.layer.addSublayer(gradientLayer)
    }
    
    func setShadow() {
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.03
        self.layer.shadowRadius = 5.0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setStyle() // UIView의 크기가 설정된 후에 스타일 설정 메서드 호출
    }
}
