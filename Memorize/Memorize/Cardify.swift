//
//  Cardify.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 20.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import SwiftUI

struct Cardify: AnimatableModifier { // ViewModifier + Animatable
    var rotation: Double
    
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    
    var isFaceUp: Bool {
        rotation < 90
    }
    
    var animatableData: Double {
        get {
            return rotation
        }
        set {
            rotation = newValue
        }
    }
    
    func body(content: Content) -> some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: cornerRadious).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadious).stroke(lineWidth: edgeLineWidth)
                content
            }
                .opacity(isFaceUp ? 1 : 0)
            RoundedRectangle(cornerRadius: cornerRadious).fill()
                .opacity(isFaceUp ? 0 : 1)
            
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (0,1,0))

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
