//
//  VisibilityExt.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 18/06/22.
//

import SwiftUI

extension View {
    func hidden(_ shouldHide: Bool) -> some View {
        opacity(shouldHide ? 0 : 1)
    }
}
