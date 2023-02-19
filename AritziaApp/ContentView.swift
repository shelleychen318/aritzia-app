//
//  ContentView.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-18.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Shop Everyday Luxury")
                .font(.system(size: 48))
                .bold()
                .padding(12)
                .foregroundColor(.white)
        }
    }
}

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
//                VStack {
                    Image("Image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
//                }
                .padding([.top], 5)
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
            .overlay(ImageOverlay(), alignment: .leading)
            .toolbar {
                // MARK: Shopping Bag Icon
                ToolbarItem {
                    Image(systemName: "bag")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
