//
//  PencilKitUIViewControllerRepresentable.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 3/07/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI
import PencilKit

struct PencilKitUIViewRepresentable : UIViewRepresentable {
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        return canvas
    }
    
    func updateUIView(_ canvas: PKCanvasView, context: Context) {
        let view = UIView()
        view.addSubview(canvas)
        canvas.tool = PKInkingTool(.pen, color: .black, width: 30)
//        if let window = view.window, let toolPicker = PKToolPicker.shared(for: window) {
//            toolPicker.setVisible(true, forFirstResponder: canvas)
//            toolPicker.addObserver(canvas)
//            toolPicker.addObserver(self)
//            
//            updateLayout(for: toolPicker)
//            canvasView.becomeFirstResponder()
        

        
    }
}

#if DEBUG
struct PencilKitUIViewRepresentable_Previews : PreviewProvider {
    static var previews: some View {
        PencilKitUIViewRepresentable()
    }
}
#endif
