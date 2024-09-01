//
//  SocialMediaLoginView.swift
//  SampleSwiftUILogin
//
//  Created by Vidhyapathi on 01/09/24.
//

import SwiftUI

struct SocialMediaLoginView: View {
    
    let imageName: String
    
    var body: some View {
        HStack {
            Button {
                print("")
            } label: {
                ZStack {
                        Image(imageName)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .tint(.white)
                }
                .frame(width: 50, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .inset(by: 1)
                        .stroke(.white, lineWidth: 1)
                )
                
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SocialMediaLoginView(imageName: "facebook")
    
}
