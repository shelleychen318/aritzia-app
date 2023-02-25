//
//  ProductsScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-24.
//

import SwiftUI

struct ProductsScreen: View {
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    var categoryName : String = ""
    var itemsList : [Product] = topsList

//    init() {
//        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Poppins-Regular", size: 20)!]
//
//    }

    var body: some View {
//        NavigationView {
        VStack {
            ScrollView (showsIndicators: false) {
                Text(categoryName)
                    .font(.custom("Poppins-Regular", size: 20))
                    .padding([.top], 25)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(itemsList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding([.top], 5)
                
            }
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "bag")
                        .font(.title3)
                }
            }
//                        .toolbar {
//                            ToolbarItem(placement: .bottomBar) {
//                                HStack(spacing: 90) {
//                                    Image(systemName: "house.fill")
//                                    Image(systemName: "heart")
//                                    Image(systemName: "person")
//                                }
//                                .font(.title3)
//                            }
//                        }
                    
        }
        .padding([.leading, .trailing])
    }
}

struct ProductsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductsScreen()
    }
}
