//
//  Temperature.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Temperature: Int {
    case celcius = 0, fahrenheit, kelvin
    
    func convertTo(temperature to: Temperature, value val: Double) -> Double {
        
        switch self {
        case .celcius:
            if to == .fahrenheit {
                return celciusToFarenhiet(val)
            } else if to == .kelvin {
                return celciusToKelvin(val)
            }  else {
                return 0.0
            }

        case .fahrenheit:
            if to == .celcius {
                return farenhietToCelcius(val)
            } else if to == .kelvin {
                return farenhietToKelvin(val)
            }  else {
                return 0.0
            }
            
        case .kelvin:
            if to == .celcius {
                return kelvinToCelcius(val)
            } else if to == .fahrenheit {
                return kelvinToFarenhiet(val)
            }  else {
                return 0.0
            }
        }
    }
    
    static func fromString(_ string: String) -> Temperature? {
        if string == "celcius" {
            return .celcius
        } else if string == "fahrenheit" {
            return .fahrenheit
        } else if string == "kelvin" {
            return .kelvin
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .celcius:
            return "celcius"
        case .fahrenheit:
            return "fahrenheit"
        case .kelvin:
            return "kelvin"
        }
    }
    
    static func toList() -> [String] {
        var i = 0
        var list = [String]()
        while let temperature = Temperature(rawValue: i) {
            list.append(temperature.stringValue())
            i = i + 1
        }
        return list
    }
    
    func celciusToFarenhiet(_ celcius: Double) -> Double {
        return 0.0
    }
    
    func celciusToKelvin(_ celcius: Double) -> Double {
        return 0.0
    }
    
    func farenhietToCelcius(_ farenhiet: Double) -> Double {
        return 0.0
    }
    
    func farenhietToKelvin(_ farenhiet: Double) -> Double {
        return 0.0
    }
    
    func kelvinToCelcius(_ kelvin: Double) -> Double {
        return 0.0
    }
    
    func kelvinToFarenhiet(_ kelvin: Double) -> Double {
        return 0.0
    }
}
