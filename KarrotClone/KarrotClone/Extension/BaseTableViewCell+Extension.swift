//
//  BaseTableViewCell+Extension.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

extension BaseTableViewCell {
    func createDefaultImage() -> UIImage {
        // 회색 이미지 크기와 색상 설정
        let imageSize = CGSize(width: 100, height: 100)
        let grayColor = UIColor.lightGray

        // 그래픽 컨텍스트 생성
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0.0)

        // 그래픽 컨텍스트에 회색으로 채우기
        grayColor.setFill()
        UIRectFill(CGRect(origin: .zero, size: imageSize))

        // 그래픽 컨텍스트에서 이미지 추출
        let grayImage = UIGraphicsGetImageFromCurrentImageContext()

        // 그래픽 컨텍스트 종료
        UIGraphicsEndImageContext()
        
        return grayImage!
    }
}
