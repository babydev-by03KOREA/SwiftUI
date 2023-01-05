//
//  ContentView.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

struct ContentView: View {
    @State var touchCount = 0
    var body: some View {
        NavigationView {
        Form {
            Text("Hello World \(touchCount)")
            Button("BUTTON") {
                self.touchCount += 1
            }
        }.navigationTitle("Title")
    }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
