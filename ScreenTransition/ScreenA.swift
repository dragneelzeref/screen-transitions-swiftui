//
//  ScreenA.swift
//  ScreenTransition
//
//  Created by Ravi on 23/03/22.
//

import SwiftUI

struct ScreenA: View {
    @EnvironmentObject var switcher: ScreenSwitcher
    var body: some View {
        ZStack{
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            Text("Screen A")
                .onTapGesture {
                    switcher.isScreenA = false
                }
        }
    }
}

struct ScreenA_Previews: PreviewProvider {
    static let switcher: ScreenSwitcher = ScreenSwitcher()
    static var previews: some View {
        ScreenA()
            .environmentObject(switcher)
    }
}
