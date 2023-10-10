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
    let address: String
    let time: String
    let chatNum: Int
    let wishNum: Int
}

let sellProducts: [SellProductModel] = [
    SellProductModel(
        imageURL: "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000",
        title: "에어팟 맥스 판매",
        price: "56,000원",
        address: "가좌동",
        time: "3분 전",
        chatNum: 1,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://files.itworld.co.kr/archive/image/2016/10/0605_31_blue3-100724297-large.jpg",
        title: "게이밍 마우스 로지텍",
        price: "12,000원",
        address: "가좌동",
        time: "10분 전",
        chatNum: 0,
        wishNum: 2
    ),
    SellProductModel(
        imageURL: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/에어-포스-1-07-남성-신발-TttlGpDb.png",
        title: "나이키 에어포스 260 팝니다",
        price: "60,000원",
        address: "호탄동",
        time: "1시간 전",
        chatNum: 0,
        wishNum: 5
    ),
    SellProductModel(
        imageURL: "https://mblogthumb-phinf.pstatic.net/MjAyMTAyMjNfMjYw/MDAxNjE0MDgxMDEwMTAx.Hr15jdM_rqIJExq7UqZrnN4fluEa_d7un5-8NgUlRoEg.9fTXrzTaMwtPVtchKJb-LOAGwxW39TU-OiEgHIPO0jEg.JPEG.dskss1114/IMG_3777.jpg?type=w800",
        title: "향수",
        price: "150,000원",
        address: "가좌동",
        time: "2시간전",
        chatNum: 0,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://img2.quasarzone.com/editor/2022/10/12/181ef6fe9336c78a8323863865864cc4.webp",
        title: "아이패드 미니",
        price: "400,000원",
        address: "하대동",
        time: "3시간 전",
        chatNum: 3,
        wishNum: 12
    ),
    SellProductModel(
        imageURL: "https://img.kr.news.samsung.com/kr/wp-content/uploads/2018/12/20181213-pr-notebook-1.jpg",
        title: "삼성 노트북 판매",
        price: "300,000원",
        address: "상대동",
        time: "6시간 전",
        chatNum: 1,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://cdn-pro-web-221-228.cdn-nhncommerce.com/casioland_godomall_com/data/goods/17/11/47/1000000245/1000000245_detail_064.png",
        title: "수능용 시계",
        price: "5,000원",
        address: "가좌동",
        time: "10시간 전",
        chatNum: 0,
        wishNum: 2
    ),
    SellProductModel(
        imageURL: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/에어-포스-1-07-남성-신발-TttlGpDb.png",
        title: "나이키 에어포스 260 팝니다",
        price: "60,000원",
        address: "호탄동",
        time: "하루 전",
        chatNum: 0,
        wishNum: 5
    ),
    SellProductModel(
        imageURL: "https://m.toring.co.kr/web/product/big/20200213/dd051b2e1b88417da5bc61a32796acf2.jpg",
        title: "목걸이 판매합니당",
        price: "10,000원",
        address: "충무공동",
        time: "하루 전",
        chatNum: 0,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://image.yes24.com/goods/69168393/XL",
        title: "1인용 소파 나눔",
        price: "나눔 🧡",
        address: "상평동",
        time: "하루 전",
        chatNum: 3,
        wishNum: 12
    ),
    
    // 반복 2
    SellProductModel(
        imageURL: "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000",
        title: "에어팟 맥스 판매",
        price: "56,000원",
        address: "가좌동",
        time: "3분 전",
        chatNum: 1,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://files.itworld.co.kr/archive/image/2016/10/0605_31_blue3-100724297-large.jpg",
        title: "게이밍 마우스 로지텍",
        price: "12,000원",
        address: "가좌동",
        time: "10분 전",
        chatNum: 0,
        wishNum: 2
    ),
    SellProductModel(
        imageURL: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/에어-포스-1-07-남성-신발-TttlGpDb.png",
        title: "나이키 에어포스 260 팝니다",
        price: "60,000원",
        address: "호탄동",
        time: "1시간 전",
        chatNum: 0,
        wishNum: 5
    ),
    SellProductModel(
        imageURL: "https://mblogthumb-phinf.pstatic.net/MjAyMTAyMjNfMjYw/MDAxNjE0MDgxMDEwMTAx.Hr15jdM_rqIJExq7UqZrnN4fluEa_d7un5-8NgUlRoEg.9fTXrzTaMwtPVtchKJb-LOAGwxW39TU-OiEgHIPO0jEg.JPEG.dskss1114/IMG_3777.jpg?type=w800",
        title: "향수",
        price: "150,000원",
        address: "가좌동",
        time: "2시간전",
        chatNum: 0,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://img2.quasarzone.com/editor/2022/10/12/181ef6fe9336c78a8323863865864cc4.webp",
        title: "아이패드 미니",
        price: "400,000원",
        address: "하대동",
        time: "3시간 전",
        chatNum: 3,
        wishNum: 12
    ),
    SellProductModel(
        imageURL: "https://img.kr.news.samsung.com/kr/wp-content/uploads/2018/12/20181213-pr-notebook-1.jpg",
        title: "삼성 노트북 판매",
        price: "300,000원",
        address: "상대동",
        time: "6시간 전",
        chatNum: 1,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://cdn-pro-web-221-228.cdn-nhncommerce.com/casioland_godomall_com/data/goods/17/11/47/1000000245/1000000245_detail_064.png",
        title: "수능용 시계",
        price: "5,000원",
        address: "가좌동",
        time: "10시간 전",
        chatNum: 0,
        wishNum: 2
    ),
    SellProductModel(
        imageURL: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/에어-포스-1-07-남성-신발-TttlGpDb.png",
        title: "나이키 에어포스 260 팝니다",
        price: "60,000원",
        address: "호탄동",
        time: "하루 전",
        chatNum: 0,
        wishNum: 5
    ),
    SellProductModel(
        imageURL: "https://m.toring.co.kr/web/product/big/20200213/dd051b2e1b88417da5bc61a32796acf2.jpg",
        title: "목걸이 판매합니당",
        price: "10,000원",
        address: "충무공동",
        time: "하루 전",
        chatNum: 0,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://image.yes24.com/goods/69168393/XL",
        title: "1인용 소파 나눔",
        price: "나눔 🧡",
        address: "상평동",
        time: "하루 전",
        chatNum: 3,
        wishNum: 12
    ),
    
    // 반복 3
    SellProductModel(
        imageURL: "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000",
        title: "에어팟 맥스 판매",
        price: "56,000원",
        address: "가좌동",
        time: "3분 전",
        chatNum: 1,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://files.itworld.co.kr/archive/image/2016/10/0605_31_blue3-100724297-large.jpg",
        title: "게이밍 마우스 로지텍",
        price: "12,000원",
        address: "가좌동",
        time: "10분 전",
        chatNum: 0,
        wishNum: 2
    ),
    SellProductModel(
        imageURL: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/에어-포스-1-07-남성-신발-TttlGpDb.png",
        title: "나이키 에어포스 260 팝니다",
        price: "60,000원",
        address: "호탄동",
        time: "1시간 전",
        chatNum: 0,
        wishNum: 5
    ),
    SellProductModel(
        imageURL: "https://mblogthumb-phinf.pstatic.net/MjAyMTAyMjNfMjYw/MDAxNjE0MDgxMDEwMTAx.Hr15jdM_rqIJExq7UqZrnN4fluEa_d7un5-8NgUlRoEg.9fTXrzTaMwtPVtchKJb-LOAGwxW39TU-OiEgHIPO0jEg.JPEG.dskss1114/IMG_3777.jpg?type=w800",
        title: "향수",
        price: "150,000원",
        address: "가좌동",
        time: "2시간전",
        chatNum: 0,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://img2.quasarzone.com/editor/2022/10/12/181ef6fe9336c78a8323863865864cc4.webp",
        title: "아이패드 미니",
        price: "400,000원",
        address: "하대동",
        time: "3시간 전",
        chatNum: 3,
        wishNum: 12
    ),
    SellProductModel(
        imageURL: "https://img.kr.news.samsung.com/kr/wp-content/uploads/2018/12/20181213-pr-notebook-1.jpg",
        title: "삼성 노트북 판매",
        price: "300,000원",
        address: "상대동",
        time: "6시간 전",
        chatNum: 1,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://cdn-pro-web-221-228.cdn-nhncommerce.com/casioland_godomall_com/data/goods/17/11/47/1000000245/1000000245_detail_064.png",
        title: "수능용 시계",
        price: "5,000원",
        address: "가좌동",
        time: "10시간 전",
        chatNum: 0,
        wishNum: 2
    ),
    SellProductModel(
        imageURL: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/에어-포스-1-07-남성-신발-TttlGpDb.png",
        title: "나이키 에어포스 260 팝니다",
        price: "60,000원",
        address: "호탄동",
        time: "하루 전",
        chatNum: 0,
        wishNum: 5
    ),
    SellProductModel(
        imageURL: "https://m.toring.co.kr/web/product/big/20200213/dd051b2e1b88417da5bc61a32796acf2.jpg",
        title: "목걸이 판매합니당",
        price: "10,000원",
        address: "충무공동",
        time: "하루 전",
        chatNum: 0,
        wishNum: 10
    ),
    SellProductModel(
        imageURL: "https://image.yes24.com/goods/69168393/XL",
        title: "1인용 소파 나눔",
        price: "나눔 🧡",
        address: "상평동",
        time: "하루 전",
        chatNum: 3,
        wishNum: 12
    ),
]
