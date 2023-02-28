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
            
            HStack {
                Text(trendingItem.name)
                    .font(.custom("Poppins-Regular", size: 14))
                
                Spacer()
                
                HeartButton()
            }
            
            Text("$\(trendingItem.price)")
                .font(.custom("Poppins-Regular", size: 14))
        }
        .frame(width: 160, height: 270)
    }
}

struct TrendingItemCard_Previews: PreviewProvider {
    static var previews: some View {
        TrendingItemCard(trendingItem: trendingItemsList[1])
    }
}
