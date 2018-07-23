//
//  WebViewController.swift
//  settrade-cmu
//
//  Created by PATTARASAI on 23/7/2561 BE.
//  Copyright © 2561 PATTARASAI. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController{
    
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URLRequest(url: URL(string: "https://www.settrade.com")!)
        self.webView.load(url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    

}
