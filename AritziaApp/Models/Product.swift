//
//  Product.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import Foundation
import UIKit

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var colors: [UIColor]
}

var productList = [Product(name: "Top 1", image: "top1_0", price: 45, colors: [UIColor(rgb: 0xFFFFFF), UIColor.blue]),
                   Product(name: "Top 2", image: "top1_1", price: 45, colors: [UIColor.blue, UIColor.blue]),
                   Product(name: "Top 3", image: "top1_2", price: 45, colors: [UIColor.blue, UIColor.blue])]

