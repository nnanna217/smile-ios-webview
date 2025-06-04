//
//  ContentView.swift
//  IOSSmileWebView
//
//  Created by Nnanna Eze on 04/06/2025.
//

import SwiftUI
import WebKit

// WebView wrapper for SwiftUI
struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        // Configure WebView
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        
        // Create WebView with configuration
        let webView = WKWebView(frame: .zero, configuration: configuration)
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        // Create request and load URL
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ContentView: View {
    let smileURL = URL(string: "https://smile-hosted-sdk-demo.glitch.me/")!
    
    var body: some View {
        WebView(url: smileURL)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
