//
//  ProductDetailsCard.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-27.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    
    var sizes = ["2XS", "XS", "S", "M", "L", "XL", "2XL"]
        
    var body: some View {
            ScrollView (showsIndicators: false) {
                VStack {
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(product.images, id: \.self) { image in
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                            }
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
                        .padding(.bottom, 20)
                        
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
                        .padding(.bottom, 30)
                        
                        Text("Sizes")
                            .font(.custom("Poppins-Regular", size: 14))
                            .padding(.bottom, 8)
                        
                        HStack {
                            ForEach(sizes, id: \.self) { size in
                                Button (action: { })
                                {
                                    Text(size)
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .frame(width: 35, height: 28)
                                        .foregroundColor(Color.black)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(.gray)
                                        )
                                }
                            }
                        }
                        .padding(.bottom, 40)
                        
                        HStack {
                            Button
                            {
                                
                            } label: {
                                Text("Add to bag")
                                    .font(.custom("Poppins-Regular", size: 20))
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 90)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray)
                                    )
                            }
                            .background(Color.black)
                            .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            HeartButton()
                        }
                        
                    }
                    .padding([.leading, .trailing], 15)
                }
                .frame(width: 380, height: 830)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                NavigationLink {
                    BagView()
                } label: {
                    BagButton(numberOfItems: 1)
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

