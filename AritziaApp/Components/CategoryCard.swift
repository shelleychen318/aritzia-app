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
//                .frame(width: 180)
                .scaledToFit()
            Text(category.name)
                .font(.subheadline)
        }
        .frame(width: 180, height: 250)
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(category: categoryList[0])
    }
}
