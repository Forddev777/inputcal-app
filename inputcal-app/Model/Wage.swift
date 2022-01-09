//
//  Wage.swift
//  inputcal-app
//
//  Created by suriya taothongkom on 9/1/2565 BE.
//

import Foundation


class Wage {
    
    class func getHours(forWage wage : Double , andPrice price: Double) -> Int {
        return Int(ceil(price / wage ))
        //return Int(round(price / wage ))
    }
    
    
    
    }
