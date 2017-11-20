//
//  Moldable.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Moldable
{
    var moldState : Bool {get set}
    func mold() -> VOid
    func isMolded() -> Bool
}
