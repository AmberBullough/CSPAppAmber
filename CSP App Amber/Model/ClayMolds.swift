//
//  ClayMolds.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class ClayMolds : Moldable
{
    private var clayColor : UIColor
    
    public var moldState : Bool
    public init()
    {
        self.clayColor = UIColor()
        self.moldState = false
    }
    
    public func mold() -> Void
    {
        print("I am Moldable!")
        moldState = true
    }
    
    public func isMolded() -> Bool
{
    if (moldState)
    {
        print("Molded")
    }
    else
    {
        print("Chunk")
    }
    return moldState
    }
}
