//
//  ProductsScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-24.
//

import SwiftUI

struct ProductsView: View {
    var categoryName : String
    var itemsList : [Product]
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 10)]

    var body: some View {
        VStack {
            ScrollView (showsIndicators: false) {
                Text(categoryName)
                    .font(.custom("Poppins-Regular", size: 20))
                    .padding([.top], 25)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(itemsList, id: \.id) { product in
                        NavigationLink(destination: ProductDetailsView(product: product),
                                       label: { ProductCard(product: product) }
                        )
                    }
                }
                .padding([.top], 5)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    BagButton(numberOfItems: 1)
                        .padding(.bottom, 10)
                }
            }
        }
        .padding([.leading, .trailing])
    }
}

struct ProductsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView(categoryName: categoryList[0].name, itemsList: topsList)
    }
}
