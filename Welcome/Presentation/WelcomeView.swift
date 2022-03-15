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
            Spacer()
            title
            Spacer()
            bottomButtons
        }
        .background(Image("welcome-background"))
    }
    
    var title: some View {
        HStack {
            LargeTitleView(
                verbatim: WelcomeTexts.TITLE
            )
                .foregroundColor(.white)
                .padding(.leading, Spacing.SPACING_08)
            Spacer()
        }
    }
    
    var bottomButtons: some View {
        VStack {
            PrimaryButtonView(
                verbatim: WelcomeTexts.SIGN_UP_TEXT,
                onClick: { print("sign up clicked") },
                backgroundColor: .white,
                textColor: .black
            )
                .padding(
                    EdgeInsets(
                        top: Spacing.SPACING_NONE,
                        leading: Spacing.SPACING_08,
                        bottom: Spacing.SPACING_NONE,
                        trailing: Spacing.SPACING_08
                    )
                )
            ThirdButtonView(
                verbatim: WelcomeTexts.LOGIN_TEXT,
                onClick: { print("sign up clicked") },
                textColor: .white
            )
                .padding(
                    EdgeInsets(
                        top: Spacing.SPACING_NONE,
                        leading: Spacing.SPACING_08,
                        bottom: Spacing.SPACING_08,
                        trailing: Spacing.SPACING_08
                    )
                )
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
