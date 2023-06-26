//
//  ViewA.swift
//  NavigationDemo
//
//  Created by Ankita Kalangutkar on 23.06.23.
//

import SwiftUI

struct ViewA: View {
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                Text("View A")
                Button("GoTo B") {
                    selection = "goToB"
                }
                NavigationLink(destination: ViewB(), tag: "goToB", selection: $selection) { EmptyView()}
            }
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
//            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
