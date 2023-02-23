//
//  Category.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import Foundation

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var categoryList = [Category(name: "T-Shirts & Tops", image: "category1"),
                    Category(name: "Pants", image: "category2"),
                    Category(name: "Bodysuits", image: "category3"),
                    Category(name: "Blazers", image: "category4"),
                    Category(name: "Dresses", image: "category5"),
                    Category(name: "Sweaters", image: "category6"),
                    Category(name: "Skirts", image: "category7"),]
