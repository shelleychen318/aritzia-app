//
//  HomeScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-18.
//

import SwiftUI
import UIKit

struct HomeView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "rische-demo", size:30)!]
    }
    
    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false) {
                VStack {
                    Banner()
                    CategoriesContainer()
                    TrendingItemsContainer()
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
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Shop Everyday Luxury")
                .font(.custom("Poppins-SemiBold", size: 40))
                .padding(24)
                .position(x: 180, y: 470)
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
            .padding([.bottom], 60)
    }
}

struct CategoriesContainer: View {
    var body: some View {
        VStack {
            Text("SHOP BY CATEGORY")
                .font(.custom("Poppins-Regular", size: 18))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categoryList, id: \.id) { category in
                        
                        let thisList = getCategory(category: category.name)
                        
                        NavigationLink(destination: ProductsView(categoryName: category.name, itemsList: thisList),
                                       label: { CategoryCard(category: category)}
                        )
                    }
                }
            }
        }
        .padding([.leading, .trailing])
        .padding([.bottom], 60)
    }
}

struct TrendingItemsContainer: View {
    var body: some View {
        VStack {
            Text("TRENDING")
                .font(.custom("Poppins-Regular", size: 18))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(trendingItemsList, id: \.id) { trendingItem in
                        TrendingItemCard(trendingItem: trendingItem)
                    }
                }
            }
        }
        .padding([.leading, .trailing])
        .padding([.bottom], 40)
    }
}

func getCategory(category: String) -> [Product] {
    if category == categoryList[0].name {
        return topsList
    }
    else {
        return pantsList
    }
}
