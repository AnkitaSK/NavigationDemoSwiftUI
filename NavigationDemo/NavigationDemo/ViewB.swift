//
//  ViewB.swift
//  NavigationDemo
//
//  Created by Ankita Kalangutkar on 23.06.23.
//

import SwiftUI

struct ViewB: View {
    @State private var selection: String? = nil
    var body: some View {
        VStack {
            Text("View B")
            Button("GoTo C") {
                selection = "goToC"
            }
            NavigationLink(destination: ViewC(), tag: "goToC", selection: $selection) { EmptyView()}
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
