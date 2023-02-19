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
                        .font(Font.title3.weight(.regular))
                }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 60) {
                        Image(systemName: "basket")
                        Image(systemName: "heart")
                        Image(systemName: "person")
                    }
                    .font(Font.title3.weight(.regular))
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
//                .padding(16)
                .position(x:190, y:530)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
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
