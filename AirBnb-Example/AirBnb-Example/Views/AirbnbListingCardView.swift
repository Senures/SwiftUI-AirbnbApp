//
//  AirbnbListingCardView.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 14.10.2023.
//

import SwiftUI

struct AirbnbListingCardView: View {
    
    let model:AirbnbListing
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
               
                .frame(width: 100, height: 100)
             
                .aspectRatio(contentMode: .fill)
                .clipped()
               
            VStack{
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                Text(model.description ?? "")
                    .lineLimit(3)
                    .foregroundColor(Color(.secondaryLabel))
                    .font(.body)
            }
        }
    }
}


