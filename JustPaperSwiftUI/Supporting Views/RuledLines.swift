//
//  RuledPaper.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 30/06/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI

struct RuledLines : View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height
                let lineSpacing: CGFloat = 37
                
                var horizontalLineY = lineSpacing*2
                
                while Int(horizontalLineY) < Int(height) {
                    if (horizontalLineY + lineSpacing) < height {
                        path.addLines([
                            CGPoint(x: 0, y: horizontalLineY),
                            CGPoint(x: width, y: horizontalLineY),
                            CGPoint(x: width, y: horizontalLineY+1),
                            CGPoint(x: 0, y: horizontalLineY+1)
                            ])
                        
                        horizontalLineY += lineSpacing
                        
                        path.move(to: CGPoint(x: 0, y:horizontalLineY))
                    } else {
                        horizontalLineY += lineSpacing
                    }
                }
                
            }
            .fill(Color.blue)
        }
        .background(Color.white)
    }
}

#if DEBUG
struct RuledLines_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPad Pro (11-inch)", "iPad Pro (12.9-inch) (3rd generation)", "iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in RuledLines()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
