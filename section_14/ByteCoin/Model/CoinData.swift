//
//  CoinData.swift
//  ByteCoin
//
//  Created by Edward Hayes on 10/1/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Codable {
    let currentRate: Float
    let currencyType: String
    
    enum CodingKeys: String, CodingKey {
        case currentRate = "rate"
        case currencyType = "asset_id_quote"
    }
}
