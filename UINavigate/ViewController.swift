//
//  ViewController.swift
//  UINavigate
//
//  Created by rabbit on 2020/01/30.
//  Copyright © 2020 rabbit. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var data: (name: String, url: String)?

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openWeb()
    }

    func openWeb() {

        if let webData = data {
            if let url = URL(string: webData.url) {
                let urlReq = URLRequest(url: url)
                webView.load(urlReq)
            }
        }
    }
}

