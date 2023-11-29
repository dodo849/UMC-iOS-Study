//
//  NetworkProvider.swift
//  OpenWeather
//
//  Created by DOYEON LEE on 11/29/23.
//

import Foundation

import Alamofire

class NetworkProvider {
    
    static let shared = NetworkProvider()

    private init() {}
    
    func getCurrentWeather(
        latitude: Double,
        longitude: Double,
        callback: @escaping (WeatherResponse?) -> Void
    ) {
        let apiKey = "8ade8ef44f5aa30c19464cb3aed9009b"
        let language = "kr"
        
        let apiUrl: String = "https://api.openweathermap.org/data/2.5/weather"
        let parameters: Parameters = [
            "lat": latitude,
            "lon": longitude,
            "exclude": "",
            "appid": apiKey,
            "lang": language
        ]
        
        AF.request(
            apiUrl,
            method: .get,
            parameters: parameters,
            encoding: URLEncoding.default,
            headers: [
                "Content-Type":"application/json", 
                "Accept":"application/json"
            ]
        )
        .responseDecodable(of: WeatherResponse.self) { response in
            switch response.result {
            case .success(let weatherResponse):
                if weatherResponse.weather.first != nil {
                    callback(weatherResponse)
                    print("Response: \(weatherResponse)")
                } else {
                    print("Error: No weather data found.")
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
