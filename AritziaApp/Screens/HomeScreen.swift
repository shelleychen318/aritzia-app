//
//  HomeScreen.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-18.
//

import SwiftUI

struct HomeScreen: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "rische-demo", size: 30)!]
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Banner()
                }
                .padding([.top], 5)
            }
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "bag")
                        .font(Font.title3)
                }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 80) {
                        Image(systemName: "tshirt")
                        Image(systemName: "heart")
                        Image(systemName: "person")
                    }
                    .font(Font.title3)
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
                .font(Font.custom("Poppins-SemiBold", size: 44))
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
            .overlay(ImageOverlay(), alignment: .leading)
    }
}
