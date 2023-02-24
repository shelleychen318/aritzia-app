//
//  ProductCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import SwiftUI

struct ProductCard: View {
    // var categoryChoice: String
    var product: Product
        
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.image)
                .resizable()
                .scaledToFit()
            
            HStack (spacing: 0){
                Text(product.name)
                    .font(.custom("Poppins-Regular", size: 14))
                
                Spacer()
                
                Button { }
                label: {
                    Image(systemName: "heart")
                        .padding(0)
                        .foregroundColor(.black)
                        .font(.subheadline)
                }
            }
            
            Text("$\(product.price)")
                .font(.custom("Poppins-Regular", size: 14))
            
            HStack {
                ForEach(product.colors, id: \.self) { color in
                                                            
                    Circle()
                        .fill(Color(color))
                        .frame(width: 10, height: 10)
                        .overlay(Circle().stroke(Color.black))
                }

            }
        }
        .frame(width: 180, height: 340)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        //if statement to control which productList gets displayed according to category selection
        
        ProductCard(product: productList[0])
    }
}
