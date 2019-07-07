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
            VStack(alignment: .leading){
                SFSymbolsActionPallete()
                SFSymbolsColorPallete()
                SFSymbolsColorPallete()
                Spacer()
        }.padding(.leading)
    }
}

struct SFSymbolsColorPallete : View {
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "square.and.pencil")
                Spacer()
            }
            HStack {
                Image(systemName: "square")
                Spacer()
            }
            HStack {
                Image(systemName: "square")
                Spacer()
            }
            HStack {
                Image(systemName: "square")
                Spacer()
            }
            HStack {
                Image(systemName: "plus.square")
                Spacer()
            }
        }
    }
}

struct SFSymbolsActionPallete : View {
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "sidebar.left")
                Spacer()
            }
            HStack {
                Image(systemName: "chevron.left")
                Spacer()
            }
            HStack {
                Image(systemName: "arrow.uturn.left")
                Spacer()
            }
            HStack {
                Image(systemName: "arrow.uturn.right")
                Spacer()
            }
            HStack {
                Image(systemName: "delete.right")
                Spacer()
            Spacer()
            }
        }
    }
}

#if DEBUG
struct SFSymbolsCreative_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPad Pro (11-inch)"].identified(by: \.self)) { deviceName in SFSymbolsCreative()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
#endif
