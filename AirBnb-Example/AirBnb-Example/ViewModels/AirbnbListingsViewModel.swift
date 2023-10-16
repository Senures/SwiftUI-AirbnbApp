//
//  AirbnbListingsViewModel.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 14.10.2023.
//

import Foundation


final class AirbnbListingsViewModel : ObservableObject {
    private let service = APIService()
    
    @Published var listings:[AirbnbListing]=[]
    
    
    public func fetchListing(){
        service.getListings() {[weak self] result in
            switch result{
            case .success(let models):
                self?.listings = models
            case .failure(let failure):
                break
            }
            
        }
    }
}
