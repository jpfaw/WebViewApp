# WebViewApp

## Overview
UIWebView・WKWebView・SFSafariViewControllerの違いを確認するためのプロジェクト。  
iOSを想定。

## Description
アプリ内でブラウジングする手法は3つあり、それぞれの実装方法の違いを確認した。  
以下に書くのはただの感想なので、特に読まなくていいです。
### UIWebView
これについてはAppleが非推奨(deprecated)だと[アナウンス](https://developer.apple.com/documentation/webkit/wkwebview)している。
>Starting in iOS 8.0 and OS X 10.10, use WKWebView to add web content to your app. Do not use UIWebView or WebView.

実際WKWebViewを使ったほうが読み込み速度的にもセキュリティ的にも良いと思う。
### WKWebView
読み込み開始とかが取れないぞ？？と思ったらセットするdelegateを間違えていた。  
読み込み関連はuiDelegateじゃなくてnavigationDelegateでした。
### SFSafariViewController
SafariのCookieを共有できるようになった。  
見た目はSafariで、リロードボタンとか進む戻る、アクションボタンとかが最初からついてる。    
読み込み開始のdelegateがないなって思ったけど実際のところ読み込み開始はボタンを押した時などなので検出はできる。
