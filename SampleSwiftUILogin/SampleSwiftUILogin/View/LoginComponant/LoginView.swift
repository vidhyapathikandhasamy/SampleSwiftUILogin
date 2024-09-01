//
//  LoginView.swift
//  SampleSwiftUILogin
//
//  Created by Vidhyapathi on 01/09/24.
//

import SwiftUI

struct LoginView: View {

    var body: some View {
        ZStack {
            Color.primaryBlueColor
            VStack {
                Spacer()
                    .frame(height: 50)
                Text("Login With")
                    .font(.title)
                    .foregroundStyle(.white)
                HStack(spacing: 12) {
                    SocialMediaLoginView(imageName: "apple")
                    SocialMediaLoginView(imageName: "facebook")
                    SocialMediaLoginView(imageName: "twitter")
                }
                LabelledDivider(label: "or", color: .white)
                UITextFieldView(textFieldTitle: "Email Address", placeholderText: "exaple@gmail.com", isSecureText: false)
                UITextFieldView(textFieldTitle: "Password", placeholderText: "************", isSecureText: true)
                RememberMeView()
                    .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                UIButtonView(buttonTitle: "Login")
                HStack {
                    Text("Don't have account?")
                        .foregroundColor(.white)
                    
                    Text("Create Account")
                        .foregroundColor(Color.primaryToggleColor)
                        .fontWeight(.bold)
                }
                .padding()

            Spacer()
            }
            .safeAreaPadding(.top, 60)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
