//
//  MarginLines.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 30/06/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI
import PencilKit

struct MarginLines : View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let height = geometry.size.height
                let marginSpacing:CGFloat = 37*2 // how to properly reference the line spacing property from RuleLines?
                
                path.addLines([
                    CGPoint(x: marginSpacing, y: 0),
                    CGPoint(x: marginSpacing, y: height),
                    CGPoint(x: marginSpacing+1, y: height),
                    CGPoint(x: marginSpacing+1, y: 0)
                    ])
                
                path.move(to: CGPoint(x: marginSpacing+3, y:0))
                
                path.addLines([
                    CGPoint(x: marginSpacing+3, y: 0),
                    CGPoint(x: marginSpacing+3, y: height),
                    CGPoint(x: marginSpacing+4, y: height),
                    CGPoint(x: marginSpacing+4, y: 0)
                    ])
            }
            .fill(Color.red)
        }
    }
}

#if DEBUG
struct MarginLines_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPad Pro (11-inch)", "iPad Pro (12.9-inch) (3rd generation)", "iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in MarginLines()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
#endif
