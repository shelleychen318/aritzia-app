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
    var image0: String
    var image1: String
    var image2: String
    var price: Int
    var colors: [UIColor]
}

var topsList = [Product(name: "Soho Longsleeve", image0: "top1_0", image1: "top1_1", image2: "top1_2", price: 45, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xfc855d)]),
                Product(name: "Contour T-Shirt", image0: "top2_0", image1: "top2_1", image2: "top2_2", price: 38, colors: [UIColor(rgb: 0xb59684), UIColor(rgb: 0x303133), UIColor(rgb: 0x94c4c5),UIColor(rgb: 0xdde6e8), UIColor(rgb: 0xff9566)]),
                Product(name: "Wiltern Longsleeve", image0: "top3_0", image1: "top3_1", image2: "top3_2", price: 45, colors: [UIColor(rgb: 0x232520), UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xff4379)]),
                Product(name: "Contour Longsleeve", image0: "top4_0", image1: "top4_1", image2: "top4_2", price: 48, colors: [UIColor(rgb: 0xab6867), UIColor(rgb: 0xeae5d9), UIColor(rgb: 0x313131), UIColor(rgb: 0x5e4639)]),
                Product(name: "Gramercy Longsleeve", image0: "top5_0", image1: "top5_1", image2: "top5_2", price: 38, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xfc855d)]),
                Product(name: "Wiltern Tank", image0: "top6_0", image1: "top6_1", image2: "top6_2", price: 35, colors: [UIColor(rgb: 0xff4379), UIColor(rgb: 0xFFFFFF)]),
                Product(name: "Contour Cami", image0: "top7_0", image1: "top7_1", image2: "top7_2", price: 38, colors: [UIColor(rgb: 0xeae5d9), UIColor(rgb: 0xdbe4e4), UIColor(rgb: 0x513e30)]),
                Product(name: "Pegasus T-Shirt", image0: "top8_0", image1: "top8_1", image2: "top8_2", price: 40, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0x99b4bf), UIColor(rgb: 0xa68c78), UIColor(rgb: 0x307bcc)])]

var pantsList = [Product(name: "Soho Longsleeve", image0: "top1_0", image1: "top1_1", image2: "top1_2", price: 45, colors: [UIColor(rgb: 0xFFFFFF), UIColor(rgb: 0xfc855d)])]
