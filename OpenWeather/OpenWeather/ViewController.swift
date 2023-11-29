//
//  ViewController.swift
//  OpenWeather
//
//  Created by DOYEON LEE on 11/28/23.
//

import UIKit

import Alamofire

class ViewController: UIViewController {
    
    let networkProvider = NetworkProvider.shared
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapWeatherButton(_ sender: Any) {
        getCurrentWeather()
    }
    
    func getCurrentWeather() {
        let latitude = 35.15425392342163
        let longitude = 128.0988667010239
        
        networkProvider.getCurrentWeather(
            latitude: latitude,
            longitude: longitude
        ) { (response) in
            self.resultLabel.text = response?.weather.first?.description
        }
    }
    
}

