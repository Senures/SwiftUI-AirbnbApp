//
//  AirbnbListingResponse.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 14.10.2023.
//

import Foundation


struct AirbnbListingResponse: Codable {
    let total_count:Int
    let results:[AirbnbListing]
}
