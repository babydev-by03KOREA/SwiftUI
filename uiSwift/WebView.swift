//
//  WebView.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI
import WebKit

// uiKit의 uiview를 사용가능하게 한다.
// UIViewRepresentable
struct WebView: UIViewRepresentable {
    // UIView를 만드는건 여기서 만들고
    
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // 너가 생성한 URL 값이 비어있다면 return
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // Update UI View 업데이트는 이쪽에서
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
    
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlToLoad: "https://bright-maamoul-952ba3.netlify.app/#/")
            .edgesIgnoringSafeArea(.all)
    }
}

