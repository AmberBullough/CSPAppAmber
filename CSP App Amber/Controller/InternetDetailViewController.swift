//
//  InternetDetailViewController.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController : UIViewController
{
    //Mark:GUIControlls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    private func configureDetailVie() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: detailAddress!)
                let current WebRequest = URLRequest(url:currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = "Amber CSP app internet screen"
            }
        }
    }
}
