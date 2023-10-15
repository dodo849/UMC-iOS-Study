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
        (tapDismissButtonCallback ?? {_ in})(textField.text ?? "")
        dismiss(animated: true)
    }
    
    var tapDismissButtonCallback: ((_: String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
