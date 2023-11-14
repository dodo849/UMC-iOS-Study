//
//  ViewController.swift
//  KakaoLogin
//
//  Created by DOYEON LEE on 11/14/23.
//

import UIKit

import KakaoSDKUser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }

    @IBAction func tapKakaoLoginButton(_ sender: Any) {
        print(UserApi.isKakaoTalkLoginAvailable())
        // 카카오톡 실행 가능 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        }
    }
    
}

