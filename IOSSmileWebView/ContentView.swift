//
//  ContentView.swift
//  IOSSmileWebView
//
//  Created by Nnanna Eze on 04/06/2025.
//

import SwiftUI
import WebKit
import UIKit

// UIKit WebViewController wrapper for SwiftUI
struct WebViewControllerRepresentable: UIViewControllerRepresentable {
    var urlString: String
    
    func makeUIViewController(context: Context) -> WebViewController {
        let webViewController = WebViewController()
        webViewController.urlString = urlString
        return webViewController
    }
    
    func updateUIViewController(_ uiViewController: WebViewController, context: Context) {
        // Updates can be handled here if needed
    }
}

struct ContentView: View {
    let smileURLString = "https://smile-hosted-sdk-demo.glitch.me/"
    
    var body: some View {
        WebViewControllerRepresentable(urlString: smileURLString)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
