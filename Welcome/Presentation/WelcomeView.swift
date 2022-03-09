//
//  WelcomeView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 09/03/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            title
        }
        .background(Image("welcome-background"))
    }
    
    var title: some View {
        HStack {
            Text("Como Vota,\ndeputado?")
                .font(.custom("bold", size: TextSize.SUPER_LARGE_TITLE_SIZE))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding(.leading, Spacing.SPACING_08)
            Spacer()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
