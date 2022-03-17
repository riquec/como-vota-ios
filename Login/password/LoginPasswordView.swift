//
//  LoginPasswordView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 17/03/22.
//

import SwiftUI

struct LoginPasswordView: View {
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            middleContent
            Spacer()
            bottomContent
        }
    }
    
    var middleContent : some View {
        VStack {
            HStack {
                Text("E qual\nsua **senha**?")
                    .font(.boldFont(size: TextSize.LARGE_TITLE_SIZE))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .padding(.leading, Spacing.SPACING_08)
                Spacer()
            }
            TextField("", text: $email)
                .padding(.horizontal, Spacing.SPACING_09)
                .font(.regularFont(size: TextSize.LABEL_SMALL_SIZE))
            Divider()
                .padding(.horizontal, Spacing.SPACING_08)
        }
    }
    
    var bottomContent: some View {
        PrimaryButtonView(
            verbatim: LoginText.BUTTON_GET_IN,
            onClick: { },
            backgroundColor: .black,
            textColor: .white
        )
            .padding(
                EdgeInsets(
                    top: Spacing.SPACING_NONE,
                    leading: Spacing.SPACING_08,
                    bottom: Spacing.SPACING_10,
                    trailing: Spacing.SPACING_08
                )
            )
    }
}

struct LoginPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPasswordView()
    }
}
