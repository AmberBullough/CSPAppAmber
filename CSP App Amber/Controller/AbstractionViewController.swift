//
//  AbstractionViewController.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AbstractionViewController : UIPageViewController, UIPageViewControllerDataSource
{
    private(set)lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel : "Block"),
            self.newAbstractionViewController(abstractionLevel : "Java"),
            self.newAbstractionViewController(abstractionLevel : "ByteCode"),
            self.newAbstractionViewController(abstractionLevel : "Binary"),
            self.newAbstractionViewController(abstractionLevel : "AndGate")
            ]
    }()
    
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel) ViewController")
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractisViews.first
        {
            setViewControllers([firstViewController],
                               diretion: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    public func pageViewController (_ pageViewController: UIPageViewController viewControllerBefore viewController:ViewController) -> UIViewController?
    {
        
    }
}
