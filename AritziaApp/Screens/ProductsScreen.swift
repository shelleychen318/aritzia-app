//
//  ProductsScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-24.
//

import SwiftUI

struct ProductsScreen: View {
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    var itemsList : [Product] = []

//    init() {
//        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Poppins-Regular", size: 20)!]
//
//    }

    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(itemsList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding([.top], 5)
                .padding([.leading, .trailing])
            }
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {

                ToolbarItem {
                    Image(systemName: "bag")
                        .font(.title3)
                }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 90) {
                        Image(systemName: "house.fill")
                        Image(systemName: "heart")
                        Image(systemName: "person")
                    }
                    .font(.title3)
                }
            }
        }
    }
}

struct ProductsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductsScreen()
    }
}
