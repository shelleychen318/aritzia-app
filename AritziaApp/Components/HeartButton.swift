//
//  HeartButton.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-28.
//

import SwiftUI

struct HeartButton: View {
    @State var isPressed : Bool = false
    
    var body: some View {
        Button (action: { self.isPressed.toggle()})
        {
            Image(systemName: self.isPressed == true ? "heart.fill" : "heart")
                .padding(0)
                .foregroundColor(.black)
                .font(.subheadline)
        }
    }
}

struct HeartButton_Previews: PreviewProvider {
    static var previews: some View {
        HeartButton()
    }
}
