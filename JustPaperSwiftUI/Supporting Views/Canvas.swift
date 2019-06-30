//
//  Canvas.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 30/06/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI
import PencilKit

// try to integrate PKCanvasView by following "Interfacing with UIKit"
// If that doesn't work, try to build PKCanvasView into a custom view, "Building custom views with SwiftUI

struct Canvas : View {
    var body: some View {
        Text("Hi")
//        let canvas = PKCanvasView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        canvas.tool = PKInkingTool(.pen, color: .black, width: 30)
//        return canvas
    }
}

#if DEBUG
struct Canvas_Previews : PreviewProvider {
    static var previews: some View {
        Canvas()
    }
}
#endif
