//
//  Wage.swift
//  window-shopper
//
//  Created by Alex Law on 2017-12-27.
//  Copyright © 2017 alex. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
