//
//  Wage.swift
//  window-shopper
//
//  Created by Henrique Dos Santos on 9/21/18.
//  Copyright © 2018 HdosSant Co. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage)) //ceil is the ceiling, meaning it will round up to the next whole number
    }
}
