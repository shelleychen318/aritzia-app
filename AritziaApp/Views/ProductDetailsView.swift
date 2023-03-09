//
//  ProductDetailsCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-27.
//

import SwiftUI

struct ProductDetailsView: View {
    @StateObject var bag = BagViewModel()
    
    var product: Product
    
    var sizes = ["2XS", "XS", "S", "M", "L", "XL", "2XL"]
        
    var body: some View {
        ScrollView (showsIndicators: false) {
            ProductDetailsCard(product: product)
                .environmentObject(bag)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
        .navigationTitle("ARITZIA")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            NavigationLink {
                BagView()
                    .environmentObject(bag)
            } label: {
                BagButton(numberOfItems: bag.products.count)
                    .padding(.bottom, 10)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: topsList[1])
    }
}

