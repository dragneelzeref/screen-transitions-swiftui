//
//  ScreenB.swift
//  ScreenTransition
//
//  Created by Ravi on 23/03/22.
//

import SwiftUI

struct ScreenB: View {
    @EnvironmentObject var switcher: ScreenSwitcher
    var body: some View {
        ZStack{
            Color.red
                .opacity(0.3)
                .ignoresSafeArea()
            Text("Screen B")
                .onTapGesture {
                    switcher.isScreenA = true
                }
        }
    }
}

struct ScreenB_Previews: PreviewProvider {
    static let switcher: ScreenSwitcher = ScreenSwitcher()
    static var previews: some View {
        ScreenB()
            .environmentObject(switcher)
    }
}
