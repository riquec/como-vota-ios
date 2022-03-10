//
//  LargeTitleView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 10/03/22.
//

import SwiftUI

struct LargeTitleView: View {
    var customText = "Large Title"
    
    @inlinable public init(verbatim content: String) {
        customText = content
    }
    
    var body: some View {
        Text(customText)
            .font(.boldFont(size: TextSize.LARGE_TITLE_SIZE))
            .multilineTextAlignment(.leading)
    }
}
