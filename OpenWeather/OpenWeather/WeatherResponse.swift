//
//  WeatherResponse.swift
//  OpenWeather
//
//  Created by DOYEON LEE on 11/28/23.
//

import Foundation

struct WeatherResponse: Codable {
    let clouds: Clouds
    let coord: Coord
    let dt: Int
    let name: String
    let sys: Sys
    let timezone: Int
    let weather: [Weather]
    let wind: Wind
}

struct Clouds: Codable {
    let all: Int
}

struct Coord: Codable {
    let lat: Double
    let lon: Double
}

struct Sys: Codable {
    let country: String
    let id: Int
    let sunrise: Int
    let sunset: Int
    let type: Int
}

struct Weather: Codable {
    let description: String
    let icon: String
    let id: Int
    let main: String
}

struct Wind: Codable {
    let deg: Int
    let gust: Double
    let speed: Double
}
