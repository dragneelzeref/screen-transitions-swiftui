//
//  ContentView.swift
//  ScreenTransition
//
//  Created by Ravi on 23/03/22.
//

import SwiftUI

class ScreenSwitcher: ObservableObject{
    @Published var isScreenA: Bool = false
}


struct ContentView: View {
    @StateObject var switcher: ScreenSwitcher = ScreenSwitcher()
    var body: some View {
        VStack{
            if switcher.isScreenA{
                ScreenA()
                    .transition(.slide)
            }
            else{
                ScreenB()
                    .transition(.backslide)
            }
        }
        .environmentObject(switcher)
        .animation(.easeIn(duration: 1), value: switcher.isScreenA)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition {
    static var backslide: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading))}
}
