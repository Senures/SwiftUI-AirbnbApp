//
//  AirbnbDetailView.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 14.10.2023.
//

import SwiftUI

struct AirbnbDetailView: View {
    
    let model:AirbnbListing
    var body: some View {
        VStack(alignment:.leading){
            GeometryReader { proxy in
                ScrollView{
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .aspectRatio( contentMode: .fit)
                        .frame(width: proxy.frame(in: .global).width,height: proxy.frame(in:.local).width)
                       
                        .clipped()
                    
                    Text(model.name ?? "")
                        .bold()
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Summary: \(model.summary ?? "")")
                        .padding()
                    Text("House Rules: \(model.house_rules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    Text("About Your Host")
                        .font(.title2)
                        .bold()
                    HStack{
                        AsyncImage(url: URL(string: model.host_picture_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        Text(model.host_name)
                            .bold()
                    }
                }
                .frame(width:proxy.frame(in:.local).width )
            }
            
        }
        .navigationTitle(model.name ?? "LİSTİNG")
    }
}



