//
//  BagViewModel.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-03-08.
//

import Foundation

class BagViewModel: ObservableObject {
    
    // initialize private variables
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    // add new product to array of products and update total price
    func addToBag(product: Product) {
        products.append(product)
        total += product.price
    }
    
    // return new array of products after filtering out the removed product and update total price
    func removeFromBag(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
