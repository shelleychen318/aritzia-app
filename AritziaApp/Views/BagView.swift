//
//  BagView.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-03-06.
//

import SwiftUI

struct BagView: View {
    @EnvironmentObject var bag: BagViewModel // import bag data into this view

    var body: some View {
        VStack {
            ScrollView (showsIndicators: false) {
                Text("My Bag")
                    .font(.custom("Poppins-Regular", size: 20))
                    .padding([.top], 25)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("You haven't put any items in your bag.")
                    .font(.custom("Poppins-Regular", size: 13))
                    .padding([.top], 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
            .navigationTitle("ARITZIA")
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding([.leading, .trailing])
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView()
            .environmentObject(BagViewModel())
    }
}
