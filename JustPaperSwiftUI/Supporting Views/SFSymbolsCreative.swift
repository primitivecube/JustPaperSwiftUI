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
        VStack{
            SFSymbolsActionPallete()
            SFSymbolsColorPallete()
            SFSymbolsColorPallete()
        }.padding(.leading)
    }
}

struct SFSymbolsColorPallete : View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Image(systemName: "square.and.pencil")
                Image(systemName: "square")
                Image(systemName: "square")
                Image(systemName: "square")
                Image(systemName: "square")
                Image(systemName: "plus.square")
            }
        }
    }
}

struct SFSymbolsActionPallete : View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Image(systemName: "sidebar.left")
                Image(systemName: "chevron.left")
                Image(systemName: "arrow.uturn.left")
                Image(systemName: "arrow.uturn.right")
                Image(systemName: "delete.right")
            }
        }
    }
}

#if DEBUG
struct SFSymbolsCreative_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPad Pro (11-inch)", "iPad Pro (12.9-inch) (3rd generation)", "iPhone SE"].identified(by: \.self)) { deviceName in SFSymbolsCreative()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
#endif
