//
//  ContentView.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    // MARK: Title
                    Text("ARITZIA")
                        .font(.title2)
                        .bold()
                }
                
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
