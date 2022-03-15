//
//  FontExt.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 10/03/22.
//

import Foundation
import SwiftUI

extension Font {
    static func boldFont(size: CGFloat) -> Font {
      return .custom("IBMPlexMono-Medium", size: size)
    }
    
    static func regularFont(size: CGFloat) -> Font {
      return .custom("IBMPlexMono-Regular", size: size)
    }
}
