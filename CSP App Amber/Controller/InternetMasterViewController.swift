//
//  TheInternetViewController.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class InternetMasterViewController : UITableViewController
{
    private(set) lazy var internetTopics : [String] =
{
    return [
        "Definitions",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide"
    ]
    }()
    
    private lazy var addresses: [String] = []
    
    private var detailViewController: InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO Replace with correct links
        addresses = [
            "https://www.google.com",
            "https://canyons.instructure.com/courses/1137392",
            "https://ctec.canyonsdistrict.org/",
            "http://www.canyonsdistrict.org/",
            "https://twitter.com/?lang=en",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html"
        ]
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }

    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }

    override public func tableView(_ tableView: UITableView , cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseidentifier", for: indexPath)
    let currentText = internetTopics[indexPath.row]
    cell.textLabel!.text = currentText
    
    return cell
}

    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
    if segue.identifier! == "showDetail"
    {
        if let indexPath = self.tableView.indexPathForSelectedRow
        {
            let urlString = addresses[indexPath.row]
            let pageText : String
            
            if indexPath.row == 0
            {
                //Replace with definitions. Great time to use the "" operator
                pageText = "all the definitions you wrote......."
            }
            else
            {
                pageText = internetTopics[indexPath.row]
            }
            
            let controller = segue.destination as! InternetDetailViewController
            
            controller.detailAddress = urlString
            controller.detailText = pageText
            controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}
