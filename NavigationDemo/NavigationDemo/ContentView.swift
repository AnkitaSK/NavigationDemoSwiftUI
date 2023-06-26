//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Ankita Kalangutkar on 23.06.23.
//

import SwiftUI

private struct MyEnvironmentKeys: EnvironmentKey {
    static let defaultValue: (() -> Void) = {}
}

extension EnvironmentValues {
    var myNavigation: (() -> Void) {
        get { self[MyEnvironmentKeys.self] }
        set { self[MyEnvironmentKeys.self] = newValue }
    }
}

struct ContentView: View {

    @State private var showViewA = false
    
    var body: some View {
        VStack {
            Button("GoTo A") {
                showViewA = true
            }
//            .sheet(isPresented: $showViewA) {
//                ViewA()
//                    .environment(\.myNavigation, {
//                        showViewA = false
//                    })
//            }
            .fullScreenCover(isPresented: $showViewA, content: {
                ViewA()
                    .environment(\.myNavigation, {
                        showViewA = false
                    })
            })
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
