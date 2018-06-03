//
//  WebViewController.swift
//  WebViewApp
//
//  Created by Yuta on 2018/06/03.
//  Copyright © 2018年 Yuta. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self;
        let url: URL! = URL(string : "https://www.apple.com/jp/")
        let urlRequest = URLRequest(url: url)
        webView.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension WebViewController {

    func webViewDidStartLoad(_: UIWebView){
        print("読み込み開始")
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }

    func webViewDidFinishLoad(_: UIWebView){
        print("読み込み完了")
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    func webView(_: UIWebView, didFailLoadWithError: Error){
        print("読み込み失敗")
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}
