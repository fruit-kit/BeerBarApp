//
//  BeerModel.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 31.01.2024.
//

import UIKit

struct Beer {
    
    var name: String
    var country: String
    let type: BeerType
    let prices: (Decimal, Decimal, Decimal)
    let image: UIImage?
    let volume: Double
}

enum BeerType {
    
    case light, dark
}
