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

var topsList = [Product(name: "Soho Longsleeve", image: "top1_0", price: 45, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xfc855d)]),
                Product(name: "Contour T-Shirt", image: "top2_0", price: 38, colors: [UIColor(rgb: 0xb59684), UIColor(rgb: 0x303133), UIColor(rgb: 0x94c4c5),UIColor(rgb: 0xdde6e8), UIColor(rgb: 0xff9566)]),
                Product(name: "Wiltern Longsleeve", image: "top3_0", price: 45, colors: [UIColor(rgb: 0x232520), UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xff4379)]),
                Product(name: "Contour Longsleeve", image: "top4_0", price: 48, colors: [UIColor(rgb: 0xab6867), UIColor(rgb: 0xeae5d9), UIColor(rgb: 0x313131), UIColor(rgb: 0x5e4639)]),
                Product(name: "Gramercy Longsleeve", image: "top5_0", price: 38, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xfc855d)]),
                Product(name: "Wiltern Tank", image: "top6_0", price: 35, colors: [UIColor(rgb: 0xff4379), UIColor(rgb: 0xFFFFFF)]),
                Product(name: "Contour Cami", image: "top7_0", price: 38, colors: [UIColor(rgb: 0xeae5d9), UIColor(rgb: 0xdbe4e4), UIColor(rgb: 0x513e30)]),
                Product(name: "Pegasus T-Shirt", image: "top8_0", price: 40, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0x99b4bf), UIColor(rgb: 0xa68c78), UIColor(rgb: 0x307bcc)])]

//var pantsList = [Product]
