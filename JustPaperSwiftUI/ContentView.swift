//
//  ContentView.swift
//  JustPaperSwiftUI
//
//  Created by Brett McDonald on 4/06/19.
//  Copyright © 2019 Brett McDonald. All rights reserved.
//

// MARK: Commerce Engineering & Technology @ 9.15
// TODO: Implement In-app Purchase
// Pro features visible but not available. If not subscribed, they are grey'd out
// Subscription: to all features is better because it is restorable
// Subs is highest growing model for productivity
// Subs fro revenue sharing model: changes from 70/30 to 85/15 after one year (per user)
// TODO: Implement StoreKit

// MARK: Apple Search Ads @ 9.30
// TODO: Promote app at the top of relevant app store search results
// Just describe the App well in the App Store Connect page
// App store listing will pull the App Icon, a sub-title (25 character), the first few screenshots (or video - see guidelines)
// SearchAds.apple.com - use your ID for app store connect,
// Search Ads Basic: cost per download goal...
// Search Ads Advanced: show against specific keywords, and get more reporting on search insights

// MARK: Business & Marketing @ 9.45
// TODO: Choose Business Model
// TODO: Launch Planning
// TODO: Marketing
// TODO: Engaging with Users
// TODO: Reach a global audience
// subscription pruchase flow...
// if you offer a subscription, you need to add value constantly. App Store Review will expect that.

// MARK: App Store Connect @ 10.30 June 4
// TODO: Learn about Test Flight

// MARK: Design  @ 10.40 June 4
// Line rule options, like for kids learning to write
// gridded options, like drawing cartooons
// plus button should be at the top
// floating tool pallette on the side (like in procreate)
// when you are writing, the UI disappears
// when you lift the pen up, the UI comes back
// the pen or highlight glyph would move over the colour to show which one is selected (saves space too)
// the not selected glyph is greyed out, the selected one is more visible
// plus and trash together, but not too close

// MARK: What's New in Swift @ 1000 June 4
// "Docker" open source Swift library
// SourceKit Stress Tester
// LSP - language service processer - SourceKit LSP (common language proceesing, like proces Swift and Python)
// github Swift Evolution
// NSlocalized String, using Text (which uses a LocalizedStringKey)
// read more, at ExpressibleByStringInterpolation
// Define embedded DSL (design specific languages) - like HTML
// the DSL will be recognised in XCode, and can even be implemented with swift language

// MARK: App Store Review
// minimum functionality requirements
// see Humuan Interface guidelines
// Functionality: must meet Privacy requirements for Data on Device
// End User needs to know what is going on with their Data, such as full disclosure on syncing with cloud or other devices
// First Time Devs: Must be production ready
// Can submit a Free App, and then add in-app purchase, or pro version later
// penmanship
// Submit to Test Flight before public ipad OS is ready
// Once ipadOS is ready, then submit to App Store Review

// MARK: SwiftUI Lab @ 1.00pm June 4
//




import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
    }
}

// TODO: Pen Palette
// TODO: Highlighter Palette
// TODO: SF Symbols for Palette and Buttons
// TODO: Show/Hide Palette based on Pencil Interaction
// TODO: Lined Paper Canvas
// TODO: Canvas Selector
// TODO: New Pad
// TODO: Delete Pad
// TODO: Pad Gallery
// TODO: Data Flow?
// TODO: Local Persistent Data
// TODO: Syncronise Data across Devices
// TODO: PencilKit Implementation
// TODO: Export as various formats (image, PDF flat, PDF with markup)


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
