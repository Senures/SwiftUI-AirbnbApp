//
//  ContentView.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 13.10.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    var body: some View {
        AirbnbListingsView()
    }
      
}


       
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
