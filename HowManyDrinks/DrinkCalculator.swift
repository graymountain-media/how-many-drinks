//
//  DrinkCalculator.swift
//  HowManyDrinks
//
//  Created by Jake Gray on 4/16/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import Foundation

class DrinkCalulator {
    
    //Amounts for 1 drink
    static let beer: Double = 12.0 //in oz
    static let wine: Double = 5.0
    
    static func calculateDrinksWith(bodyWeight: Double, gender: Gender) -> (shots: Double, beerInOunces: Double, wineInOunces: Double) {
        
        let numberOfDrinks: Double = (0.0008 * (bodyWeight * 454 * gender.rawValue)) / 14
        
        return (numberOfDrinks, numberOfDrinks * beer, numberOfDrinks * wine)
    }
    
}
