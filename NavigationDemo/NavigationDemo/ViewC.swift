//
//  ViewC.swift
//  NavigationDemo
//
//  Created by Ankita Kalangutkar on 23.06.23.
//

import SwiftUI

struct ViewC: View {
    @Environment(\.myNavigation) var myNavigation

    var body: some View {
        VStack {
            Text("View C")
            Button("GoTo ContentView") {
                myNavigation()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
