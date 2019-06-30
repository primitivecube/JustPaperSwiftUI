//
//  RuledPaper.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 30/06/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI

struct RuledLines : View {
//    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let lineSpacing: CGFloat = 37
                let horizontalLines = geometry.size.height / lineSpacing
                
                var horizontalLineY = lineSpacing*2
                
                while Int(horizontalLineY) < Int(geometry.size.height) {
                    if (horizontalLineY + lineSpacing) < geometry.size.height {
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
