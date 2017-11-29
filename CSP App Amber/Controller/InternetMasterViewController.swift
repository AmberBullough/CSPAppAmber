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
    private(set) lazy va internetTopics : [String] =
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
    
    private var detailViewController: InternetDetailViewCotroller?
    
    private func setup() -> Void
    {
        
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }

    override public func numberOfSections(intableVieweUITableView) -> Int
    {
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }

    override public func taleView(_ tableView: UITableView , cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
    let cell = tableView.dequeueReusableCell(withIdentifier: "reusedentifier", for: indexpath)
    let currentText = internetTopics[indexPath.row]
    cell.textLabel!.text = currentText
    
    return cell
}
