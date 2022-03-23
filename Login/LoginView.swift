//
//  LoginView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 16/03/22.
//

import SwiftUI

struct LoginView: View {
    
    private static let EMAIL_STEP = "EMAIL"
    private static let PASSWORD_STEP = "PASSWORD"
    
    private let steps: [String] = [EMAIL_STEP, PASSWORD_STEP]
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .blue
                UIPageControl.appearance().pageIndicatorTintColor = .red
                UIPageControl.appearance().tintColor = .red
    }
 
    var body: some View {
        ScrollView(.init()) {
            TabView {
                ForEach(steps.indices, id: \.self) { index in
                    let selectedStep = steps[index]
                    
                    if (selectedStep == LoginView.EMAIL_STEP) {
                        LoginEmailView()
                    } else {
                        LoginPasswordView()
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .overlay(dots, alignment: .top)
        }
    }
    
    private var dots: some View {
        HStack(spacing: 15) {
            ForEach(steps.indices, id: \.self) { index in
                Capsule()
                    .fill(Color.black)
                    .frame(width: DotIndicatorSize.DOT_SIZE, height: DotIndicatorSize.DOT_SIZE)
                    .padding(.top, Spacing.SPACING_10)
                
            }
        }
    
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
