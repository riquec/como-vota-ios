//
//  PrimaryButtonView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 10/03/22.
//

import SwiftUI

struct PrimaryButtonView: View {
    
    private var customText = "Large Title"
    private var customOnClickButton = {}
    private var customBackgroundColor = Color.black
    private var customTextColor = Color.black
    
    @inlinable public init(
        verbatim content: String,
        onClick: @escaping () -> Void,
        backgroundColor: Color,
        textColor: Color
    ) {
        customText = content
        customOnClickButton = onClick
        customBackgroundColor = backgroundColor
        customTextColor = textColor
            
    }
    
    var body: some View {
        Button(action: customOnClickButton) {
            Text(customText)
                .padding()
                .font(.boldFont(size: TextSize.LABEL_SMALL_SIZE))
                .frame(maxWidth: .infinity)
        }
            .background(customBackgroundColor)
            .foregroundColor(customTextColor)
            .cornerRadius(BorderSize.ROUNDED_BUTTON_BORDER_SIZE)
    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonView(verbatim: "alegria", onClick: {
            print("clicou no botão")
        }, backgroundColor: .red, textColor: .black)
    }
}
