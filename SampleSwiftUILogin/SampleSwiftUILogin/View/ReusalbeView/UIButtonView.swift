//
//  UIButtonView.swift
//  SampleSwiftUILogin
//
//  Created by Vidhyapathi on 01/09/24.
//

import SwiftUI

struct UIButtonView: View {
    
    var buttonTitle: String
    
    var body: some View {
        VStack {
            Button {
                print("")
                
            } label: {
                Spacer()
                Text(buttonTitle)
                    .foregroundColor(.white)
                    .frame(height: 40)
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.primaryOrange)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    UIButtonView(buttonTitle: "Login")
}
