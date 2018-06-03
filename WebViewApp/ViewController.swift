//
//  ViewController.swift
//  WebViewApp
//
//  Created by Yuta on 2018/06/03.
//  Copyright © 2018年 Yuta. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tappedSafariButton(_ sender: Any) {
        let url: URL! = URL(string: "https://www.apple.com/jp/")
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.delegate = self
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        present(safariViewController, animated: true, completion: nil)
    }
}

extension ViewController: SFSafariViewControllerDelegate {

    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        if didLoadSuccessfully {
            print("読み込み完了")
        } else {
            print("読み込み失敗")
        }
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("使用終了")
    }
}

