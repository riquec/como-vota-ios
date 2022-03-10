//
//  PrimaryButtonView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 10/03/22.
//

import SwiftUI

struct PrimaryButtonView: View {
    var body: some View {
        Button(action: {}) {
            Text("Button")
                .padding()
        }
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonView()
    }
}
