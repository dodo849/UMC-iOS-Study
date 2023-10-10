//
//  UIImageView+Extension.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation
import UIKit

extension UIImageView {
    func setImageWithURL(_ url: String) {
        if let imageUrl = URL(string: url) {
            
            // URLSession을 사용하여 비동기적으로 이미지 다운로드
            URLSession.shared.dataTask(with: imageUrl) { data, _, error in
                
                // 에러 처리
                if let error = error {
                    print("Error downloading image: \(error)")
                    return
                }
                
                // 데이터를 UIImage로 변환
                if let imageData = data, let image = UIImage(data: imageData) {
                    
                    // UI 업데이트는 메인 스레드에서 수행되어야 함
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }
            }.resume()
        }
    }
    
    
}
