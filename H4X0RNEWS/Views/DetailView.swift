//
//  DetailView.swift
//  H4X0RNEWS
//
//  Created by  Mr.Ki on 28.12.2021.
//

import SwiftUI
import WebKit




struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
        if let url = URL(string: safeString) {
            let request = URLRequest(url: url)
            uiView.load(request)
            
        }
    }
    }
}
