//
//  Product.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var colors: [Int]
}

var productList = [Product(name: "Soho Longsleeve", image: "top1_0", price: 45, colors: [0xFF0000, 0xFF0000]),
                   Product(name: "Soho Longsleeve", image: "top1_1", price: 45, colors: [0xFF0000, 0xFF0000]),
                   Product(name: "Soho Longsleeve", image: "top1_2", price: 45, colors: [0xFF0000, 0xFF0000])]

