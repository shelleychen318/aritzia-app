//
//  HomeScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-18.
//

import SwiftUI

struct HomeScreen: View {
    
    private let categories = ["T-Shirts & Tops", "Pants", ]
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "rische-demo", size: 30)!]
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Banner()
                    CategoriesContainer()
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
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 80) {
                        Image(systemName: "tshirt")
                        Image(systemName: "heart")
                        Image(systemName: "person")
                    }
                    .font(.title3)
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Shop Everyday Luxury")
                .font(.custom("Poppins-SemiBold", size: 44))
                .padding(24)
                .position(x: 190, y: 500)
                .foregroundColor(.white)
        }
    }
}

struct Banner: View {
    var body: some View {
        Image("BannerImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .overlay(ImageOverlay())
            .padding(.bottom)
    }
}

struct CategoriesContainer: View {
    var body: some View {
        VStack {
            Text("SHOP BY CATEGORY")
                .font(.custom("Poppins-Regular", size: 18))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            ScrollView (.horizontal) {
                HStack {
                    ForEach(categoryList, id: \.id) { category in
                        CategoryCard(category: category)
                    }
                }
            }
        }
        .padding(.leading)
    }
}
