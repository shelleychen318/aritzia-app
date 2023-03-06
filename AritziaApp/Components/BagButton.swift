//
//  BagButton.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-03-06.
//

import SwiftUI

struct BagButton: View {
    var numberOfItems: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag")
                .font(.title3)
//                .padding([.top, .trailing], 3)
            
            if numberOfItems > 0 {
                Text("\(numberOfItems)")
                    .font(.custom("Poppins-Regular", size: 10)).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.black)
                    .cornerRadius(50)
            }
            
        }
    }
}

struct BagButton_Previews: PreviewProvider {
    static var previews: some View {
        BagButton(numberOfItems: 1)
    }
}
