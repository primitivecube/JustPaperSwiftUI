//
//  SFSymbolsCreative.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 7/07/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

import SwiftUI

struct SFSymbolsCreative : View {
    var body: some View {
        ZStack{
            RuledLines()
            MarginLines()
        }
    }
}

#if DEBUG
struct SFSymbolsCreative_Previews : PreviewProvider {
    static var previews: some View {
        SFSymbolsCreative()
        .previewDevice("iPad Pro (11-inch)")
    }
}
#endif
