//
//  FeaturedItemCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import SwiftUI

struct TrendingItemCard: View {
    var trendingItem: TrendingItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(trendingItem.image)
                .resizable()
                .scaledToFit()
            
            HStack (spacing: 0){
                Text(trendingItem.name)
                    .font(.custom("Poppins-Regular", size: 14))
                
                Button { }
                label: {
                    Image(systemName: "heart")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(0)
                        .foregroundColor(.black)
                        .font(.subheadline)
                }
            }
            
            Text("$\(trendingItem.price)")
                .font(.custom("Poppins-Regular", size: 14))
        }
        .frame(width: 180, height: 310)
    }
}

struct TrendingItemCard_Previews: PreviewProvider {
    static var previews: some View {
        TrendingItemCard(trendingItem: trendingItemsList[0])
    }
}
