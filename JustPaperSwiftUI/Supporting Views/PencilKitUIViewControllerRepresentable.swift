//
//  PencilKitUIViewControllerRepresentable.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 3/07/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI
import PencilKit

struct PencilKitUIViewControllerRepresentable : UIViewRepresentable {
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        
        return canvas
    }
    
    func updateUIView(_ canvas: PKCanvasView, context: Context) {
        
    }
}

#if DEBUG
struct PencilKitUIViewControllerRepresentable_Previews : PreviewProvider {
    static var previews: some View {
        PencilKitUIViewControllerRepresentable()
    }
}
#endif
