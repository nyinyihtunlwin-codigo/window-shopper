//
//  Wage.swift
//  window-shopper
//
//  Created by Administrator on 8/12/20.
//  Copyright © 2020 Nyi Nyi Htun Lwin. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, forPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
