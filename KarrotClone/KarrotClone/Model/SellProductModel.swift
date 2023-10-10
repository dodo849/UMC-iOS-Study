//
//  SellProductModel.swift
//  KarrotClone
//
//  Created by DOYEON LEE on 10/10/23.
//

import Foundation

struct SellProductModel {
    let imageURL: String
    let title: String
    let price: String
    let chatNum: Int
    let wishNum: Int
}

imageURL: "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000",
title: "에어팟 맥스 판매",
price: "56,000원",
chatNum: 1,
wishNum: 10

static sellProducts: [SellProductModel] = [
    SellProductModel(
        imageURL: <#T##String#>,
        title: <#T##String#>,
        price: <#T##String#>,
        chatNum: <#T##Int#>,
        wishNum: <#T##Int#>
    )
]
