//
//  ClimaBrain.swift
//  ClimaModels
//
//  Created by Pedro Brandão on 16/02/22.
//

import Foundation

public enum ClimaType: String {
    case cloudBolt = "cloud.bolt"
    case cloudDrizzle = "cloud.drizzle"
    case cloudRain = "cloud.rain"
    case cloudSnow = "cloud.snow"
    case cloudFog = "cloud.fog"
    case sunMax = "sun.max"
    case none = "cloud"
    
    static public func imageName(for conditionID: Int) -> String {
        switch conditionID {
        case 200...232, 801...804:
            return ClimaType.cloudBolt.rawValue
        case 300...321:
            return ClimaType.cloudDrizzle.rawValue
        case 500...531:
            return ClimaType.cloudRain.rawValue
        case 600...622:
            return ClimaType.cloudSnow.rawValue
        case 701...781:
            return ClimaType.cloudFog.rawValue
        case 800:
            return ClimaType.sunMax.rawValue
        default:
            return ClimaType.none.rawValue
        }
    }
}

public struct ClimaBrain {
}
