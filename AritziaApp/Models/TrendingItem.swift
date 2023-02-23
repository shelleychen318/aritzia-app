//
//  TrendingItem.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import SwiftUI

struct TrendingItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var trendingItemsList = [TrendingItem(name: "Sculpt Tank", image: "trendingItem1", price: 58),
                         TrendingItem(name: "Pleated Pant", image: "trendingItem2", price: 148),
                         TrendingItem(name: "Fonda Dress", image: "trendingItem3", price: 128),
                         TrendingItem(name: "Forte Blazer", image: "trendingItem4", price: 198),
                         TrendingItem(name: "Vitae Blouse", image: "trendingItem5", price: 78),]
