//
//  ProgrammingViewController.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController : UIViewController
{
    //Mark: UI Components
    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
    let gameScene = StartScene(size: view.bounds.size)
    let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    
    }
}
