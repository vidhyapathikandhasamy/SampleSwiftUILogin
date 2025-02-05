//
//  LabelledDivider.swift
//  SampleSwiftUILogin
//
//  Created by Vidhyapathi on 01/09/24.
//

import SwiftUI

struct LabelledDivider: View {
    
    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .white) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label).foregroundColor(color)
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LabelledDivider(label: "Or")
}
