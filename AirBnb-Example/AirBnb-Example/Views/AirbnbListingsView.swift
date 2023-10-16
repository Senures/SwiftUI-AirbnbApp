//
//  AirbnbListingsView.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 14.10.2023.
//

import SwiftUI

struct AirbnbListingsView: View {
    
    @StateObject var viewModel =  AirbnbListingsViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                if viewModel.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings){ listing in
                        NavigationLink(destination: AirbnbDetailView(model:listing), label: {
                            AirbnbListingCardView(model: listing)
                        })
                        
                    }
                }
                
            }
            .navigationTitle("Airbnb")
        }
        .onAppear{
            viewModel.fetchListing()
        }
    }
}

struct AirbnbListingsView_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbListingsView()
    }
}
