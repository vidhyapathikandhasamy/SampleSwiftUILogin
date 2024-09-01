//
//  RememberMeView.swift
//  SampleSwiftUILogin
//
//  Created by Vidhyapathi on 01/09/24.
//

import SwiftUI

struct RememberMeView: View {
    
    @State private var isOn: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Toggle(isOn: $isOn) {
                    Text("Rember me")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .tint(Color.primaryToggleColor)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RememberMeView()
}
