//
//  LoginView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 16/03/22.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    private static let EMAIL_STEP = "EMAIL"
    private static let PASSWORD_STEP = "PASSWORD"
    
    private let steps: [String] = [EMAIL_STEP, PASSWORD_STEP]
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
            UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
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
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image("back-black")
                        .resizable()
                        .frame(width: 24.0, height: 24.0)
                        .foregroundColor(.white)
                }
            }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
