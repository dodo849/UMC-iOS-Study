//
//  FirstViewController.swift
//  DelegatePractice
//
//  Created by DOYEON LEE on 10/13/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    func changeLabel(text: String) {
        textLabel.text = text
    }

    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func tapNextView(_ sender: Any) {
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        nextVC.tapDismissButtonCallback = { [weak self] text in
            self?.textLabel.text = text
        }
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

