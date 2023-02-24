//
//  ProductCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-23.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.image)
                .resizable()
                .scaledToFit()
            
            HStack (spacing: 0){
                Text(product.name)
                    .font(.custom("Poppins-Regular", size: 14))
                
                Button { }
                label: {
                    Image(systemName: "heart")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(0)
                        .foregroundColor(.black)
                        .font(.subheadline)
                }
            }
            
            Text("$\(product.price)")
                .font(.custom("Poppins-Regular", size: 14))
            
            HStack {
                ForEach(product.colors, id: \.self) { color in
                    
//                    ColorDotView(color: Color(0xFc855d))
                    
                    Circle()
                        .fill(Color(0xFc855d))
                        .frame(width: 10, height: 10)
                }

            }
        }
        .frame(width: 180, height: 340)
    }
}

//struct ColorDotView: View {
//    let color: Color
//    var body: some View {
//        color
//            .frame(width: 10, height: 10)
//            .clipShape(Circle())
//    }
//}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
