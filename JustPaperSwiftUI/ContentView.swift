import SwiftUI
import PencilKit

//import PencilKit

struct ContentView : View {
    @State var pencilIsInteracting = false
    
    var body: some View {
        ZStack {
//            PencilKitUIViewRepresentable()
            // PencilKit integration needs work
            RuledLines()
            MarginLines()
            SFSymbolsCreative() // affected by dark mode, they turn white. disable dark mode? or enable for background color?
        }
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPad Pro (11-inch)", "iPad Pro (12.9-inch) (3rd generation)", "iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in ContentView()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
#endif
