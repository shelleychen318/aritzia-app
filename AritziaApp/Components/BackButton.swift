//
//  BackButton.swift
//  AritziaApp
//
//  Created by Shelley Chen on 2023-02-28.
//

import SwiftUI

struct BackButton: View {
    
    // overwrite default back button text
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
            }
            
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
