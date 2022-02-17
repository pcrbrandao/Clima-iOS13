//
//  WeatherModel.swift
//  Clima
//
//  Created by Pedro Brandão on 16/02/22.
//

import Foundation

struct WeatherModel {
    struct Request {
        let cityName: String
        let units: String
        
        init(cityName: String, units: String) {
            self.cityName = cityName
            self.units = units
        }
    }
    
    struct Result {
        let temperature: String
        
        init(temperature: String) {
            self.temperature = temperature
        }
    }
    
    struct View {
        let cityName: String
        let temperature: String
        let imageName: String
        
        init(cityName: String,
             temperature: String,
             imageName: String) {
            self.cityName = cityName
            self.temperature = temperature
            self.imageName = imageName
        }
    }
}
