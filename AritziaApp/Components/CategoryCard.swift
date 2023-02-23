//
//  CategoryCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import SwiftUI

struct CategoryCard: View {
    var category: Category
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(category.image)
                .resizable()
                .scaledToFit()
            Text(category.name)
                .font(.custom("Poppins-Regular", size: 14))
        }
        .frame(width: 180, height: 300)
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(category: categoryList[0])
    }
}
