//
//  ViewController.swift
//  KakaoLogin
//
//  Created by DOYEON LEE on 11/14/23.
//

import UIKit

import KakaoSDKUser

class ViewController: UIViewController {
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var savedIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let savedId = UserDefaults.standard.string(forKey: "id") ?? "저장된 ID가 없습니다"
        savedIDLabel.text = "저장된 ID \(savedId)"

    }

    @IBAction func tapLogoutButton(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "id")
        UserDefaults.standard.removeObject(forKey: "pw")
    }
    
    @IBAction func tapLoginButton(_ sender: Any) {
        var id = idField.text
        var pw = pwField.text
        UserDefaults.standard.set(id, forKey: "id")
        UserDefaults.standard.set(pw, forKey: "pw")
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

