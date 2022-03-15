//
//  ThirdButtonView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 15/03/22.
//

import SwiftUI

struct ThirdButtonView: View {
    private var customText = "Large Title"
    private var customOnClickButton = {}
    private var customTextColor = Color.black
    
    @inlinable public init(
        verbatim content: String,
        onClick: @escaping () -> Void,
        textColor: Color
    ) {
        customText = content
        customOnClickButton = onClick
        customTextColor = textColor
            
    }
    
    var body: some View {
        Button(action: customOnClickButton) {
            Text(customText)
                .padding()
                .font(.boldFont(size: TextSize.LABEL_SMALL_SIZE))
                .frame(maxWidth: .infinity)
        }
            .foregroundColor(customTextColor)
            .cornerRadius(BorderSize.ROUNDED_BUTTON_BORDER_SIZE)
    }
}

struct ThirdButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdButtonView(verbatim: "alegria", onClick: {
            print("clicou no botão")
        }, textColor: .black)
    }
}
