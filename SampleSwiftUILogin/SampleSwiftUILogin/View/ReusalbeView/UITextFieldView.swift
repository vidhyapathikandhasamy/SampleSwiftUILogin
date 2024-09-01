//
//  UITextFieldView.swift
//  SampleSwiftUILogin
//
//  Created by Vidhyapathi on 01/09/24.
//

import SwiftUI

struct UITextFieldView: View {
    
    var textFieldTitle: String
    
    var placeholderText: String
    
    var isSecureText: Bool
    
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(textFieldTitle)
                .foregroundColor(.white)
            if isSecureText {
                SecureField(placeholderText, text: $text)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .inset(by: 1)
                            .stroke(.white, lineWidth: 1)
                    )
            } else {
                TextField(placeholderText, text: $text)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .inset(by: 1)
                            .stroke(.white, lineWidth: 1)
                    )
            }
            
        }
        .padding(EdgeInsets(top: 3, leading: 20, bottom: 3, trailing: 20))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    UITextFieldView(textFieldTitle: "Email Address", placeholderText: "exaple@gmail.com", isSecureText: false)
    
}
