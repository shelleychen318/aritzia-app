//
//  ProductDetailsCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-27.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    
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
        VStack (alignment: .leading){
            //            ScrollView (showsIndicators: false) {
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 0) {
                    Image(product.image0)
                        .resizable()
                        .scaledToFit()
                    Image(product.image1)
                        .resizable()
                        .scaledToFit()
                    Image(product.image2)
                        .resizable()
                        .scaledToFit()
                }
                .padding(.bottom, 5)
            }
            
            VStack (alignment: .leading) {
                HStack {
                    Text(product.name)
                        .font(.custom("Poppins-Regular", size: 18))
                    
                    Spacer()
                    
                    Text("$\(product.price)")
                        .font(.custom("Poppins-Regular", size: 18))
                }
                .padding(.bottom, 25)
                
                Text("Colors")
                    .font(.custom("Poppins-Regular", size: 14))
                
                HStack {
                    ForEach(product.colors, id: \.self) { color in
                        Circle()
                            .fill(Color(color))
                            .frame(width: 25, height: 25)
                            .overlay(Circle().stroke(Color.gray))
                            .padding(.trailing)
                    }
                }
            }
            .padding([.leading, .trailing], 15)
            //            }
        }
        .frame(width: 380, height: 600)
        .toolbar(.hidden, for: .tabBar)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: topsList[1])
    }
}
