//
//  Cardify.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 20.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadious).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadious).stroke(lineWidth: edgeLineWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: cornerRadious).fill()
            }
        }
    }
    
    private let cornerRadious: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
}

// .cardify extension part
extension View {
    func cardify(isFaceup: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceup))
    }
}
