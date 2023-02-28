//
//  ProductsScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-24.
//

import SwiftUI

struct ProductsView: View {
    
    var categoryName : String = ""
    var itemsList : [Product] = topsList
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    
    // overwrite default back button text
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
            Image(systemName: "chevron.backward")
                .aspectRatio(contentMode: .fit)
            }
        }
    }


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
                                       label: { ProductCard(product: product)}
                        )
                    }
                }
                .padding([.top], 5)
            }
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "bag")
                        .font(.title3)
                }
            }
        }
        .padding([.leading, .trailing])
    }
}

struct ProductsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
