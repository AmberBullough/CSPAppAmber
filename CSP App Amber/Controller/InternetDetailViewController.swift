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
    
    private func setup() -> Void
    {
        
    }
    }
