//
//  WebViewController.swift
//  bmi_calculator
//
//  Created by 소프트웨어컴퓨터 on 2021/11/29.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goGoogle(_ sender: UIButton) {
        
        guard let myURL = URL(string:"https://m.google.com") else {return}
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let myURL = URL(string:"https://ksyy.tistory.com") else {return}
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    

    

}
