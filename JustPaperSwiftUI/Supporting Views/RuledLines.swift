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
                let lineSpacing: CGFloat = 20
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
//                let height = width * 0.75
//                let spacing = width * 0.030
//                let middle = width / 2
//                let topWidth = 0.226 * width
//                let topHeight = 0.488 * height
//
//                //points of the shape
//                let topPoint = CGPoint(x: middle, y: spacing)
//                let leftPoint = CGPoint(x: middle - topWidth, y: topHeight - spacing)
//                let centrePoint = CGPoint(x: middle, y: topHeight / 2 + spacing)
//                let rightPoint = CGPoint(x: middle + topWidth, y: topHeight - spacing)
                
//                path.addLines([
//                    topPoint,
//                    leftPoint,
//                    centrePoint,
//                    rightPoint,
//                    topPoint
//                    ])
                
//                path.addLines([
//                    CGPoint(x: 0, y: 5),
//                    CGPoint(x: width, y: 5),
//                    CGPoint(x: width, y: 6),
//                    CGPoint(x: 0, y: 6)
//                    ])
                
                // 20 points should be about 7mm (standard distance between ruled lines)
                
//                path.move(to: CGPoint(x: 0, y: 25))
//                path.addLines([
//                    CGPoint(x: 0, y: 25),
//                    CGPoint(x: width, y: 25),
//                    CGPoint(x: width, y: 26),
//                    CGPoint(x: 0, y: 26)
//                    ])
                
//                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
//                path.addLines([
//                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
//                    CGPoint(x: spacing, y: height - spacing),
//                    CGPoint(x: width - spacing, y: height - spacing),
//                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
//                    CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
//                    ])
                }
                .fill(Color.blue)
        }
    }
}

#if DEBUG
struct RuledLines_Previews : PreviewProvider {
    static var previews: some View {
        RuledLines()
    }
}
#endif
