//
//  uiSwiftApp.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

@main
struct uiSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(urlToLoad: "https://bright-maamoul-952ba3.netlify.app/#/").edgesIgnoringSafeArea(.bottom).preferredColorScheme(.light)
        }
    }
}
