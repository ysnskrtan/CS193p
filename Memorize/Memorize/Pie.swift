//
//  Pie.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 20.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import SwiftUI

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clokwise: Bool = false
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radious = min(rect.width, rect.height) / 2
        let start = CGPoint(x: center.x + radious * cos(CGFloat(startAngle.radians)), y: center.y + radious * sin(CGFloat(startAngle.radians)))
        
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(center: center, radius: radious, startAngle: startAngle, endAngle: endAngle, clockwise: clokwise)
        p.addLine(to: center)
        
        return p
    }
}
