//
//  SecondViewController.swift
//  DelegatePractice
//
//  Created by DOYEON LEE on 10/13/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func tapDismissButton(_ sender: Any) {
        delegate?.changeLabel(text: textField.text ?? "")
        dismiss(animated: true)
    }
    
    var delegate: ChangeLabelDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
