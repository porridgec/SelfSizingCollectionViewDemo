//
//  TableViewController.swift
//  collectionviewdemo
//
//  Created by Hahn.Chan on 2018/8/1.
//  Copyright © 2018 Hahn Chan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let entry = ["Fixed width cell",
                 "Fixed height cell"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = entry[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc") as! ViewController
        vc.style = ViewController.Style.init(rawValue: indexPath.row)!
        show(vc, sender: nil)
    }

}
