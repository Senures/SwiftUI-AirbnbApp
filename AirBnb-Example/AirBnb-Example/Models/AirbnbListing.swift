//
//  AirbnbListing.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 14.10.2023.
//

import Foundation

struct AirbnbListing: Codable , Hashable, Identifiable{
    let id:String
    let listing_url:String?
    let scrape_id:String?
    let last_scraped:String?
    let name:String?
    let summary:String?
    let space:String?
    let description:String?
    let house_rules:String?
    let thumbnail_url:String?
    let medium_url:String?
    let xl_picture_url:String?
    let neighbourhood:String?
    let amenities:[String]?
    let price:Int
    
    //host details
    let host_name:String
    let host_since:String
    let host_thumbnail_url:String
    let host_picture_url:String
    
}
