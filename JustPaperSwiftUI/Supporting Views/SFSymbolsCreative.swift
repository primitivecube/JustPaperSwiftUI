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
        ZStack {
            RuledLines()
            MarginLines()
            
            VStack{
                SFSymbolsContextPallete()
                Spacer()
            }
                .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 0))
            
            VStack{
                SFSymbolsActionPallete()
                Spacer()
            }
            .padding(.init(top: 37*3, leading: 20, bottom: 0, trailing: 0))

            VStack{
                SFSymbolsColorPallete()
                Spacer()
            }
            .padding(.init(top: 37*8, leading: 20, bottom: 0, trailing: 0))
            
            VStack{
                SFSymbolsColorPallete()
                Spacer()

            }
            .padding(.init(top: 37*15, leading: 20, bottom: 0, trailing: 0))
        }
    }
}

struct SFSymbolsColorPallete : View {
    let symbolWidth:CGFloat = 30
    let symbolHeight:CGFloat = 30
    
    var body: some View {
       
        VStack{
            HStack {
                Image(systemName: "square.and.pencil").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "square").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "square").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "square").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "plus.square").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
        }
    }
}

struct SFSymbolsActionPallete : View {
    
    let symbolWidth:CGFloat = 30
    let symbolHeight:CGFloat = 30
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "arrow.uturn.left").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "arrow.uturn.right").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "delete.right").resizable().frame(width: symbolWidth, height: symbolHeight)
            Spacer()
            }
        }
    }
}

struct SFSymbolsContextPallete : View {
    
    let symbolWidth:CGFloat = 30
    let symbolHeight:CGFloat = 30
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "sidebar.left").resizable().frame(width: symbolWidth, height: symbolHeight)
                Spacer()
            }
            HStack {
                Image(systemName: "chevron.left").resizable().frame(width: symbolWidth, height: symbolHeight)
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
