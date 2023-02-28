//
//  MainView.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Shop", systemImage: "house")
                }
            
            WishListView()
                .tabItem {
                    Label("Wish List", systemImage: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
