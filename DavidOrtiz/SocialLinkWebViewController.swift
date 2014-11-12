//
//  SocialLinkWebViewController.swift
//  DavidOrtiz
//
//  Created by David Ortiz on 8/7/14.
//  Copyright (c) 2014 Dognate. All rights reserved.
//

import UIKit

class SocialLinkWebViewController: UIViewController {
    @IBOutlet var webView: UIWebView
    

    
    
    var socialURL : String?
    var socialService : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = socialService
        
        let url = NSURL(string : socialURL!)
        let request = NSURLRequest(URL : url)
        webView.loadRequest(request)
    }

}
