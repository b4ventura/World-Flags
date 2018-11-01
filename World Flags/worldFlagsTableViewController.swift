//
//  worldFlagsTableViewController.swift
//  World Flags
//
//  Created by Bernard Ventura on 11/1/18.
//  Copyright © 2018 Bernard Ventura. All rights reserved.
//

import UIKit

class worldFlagsTableViewController: UITableViewController {
    
    var flags = ["🇺🇸","🇬🇧","🏴󠁧󠁢󠁥󠁮󠁧󠁿","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🏴󠁧󠁢󠁷󠁬󠁳󠁿"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flags.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = flags[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let flag = flags[indexPath.row]
        
        performSegue(withIdentifier: "mySegue", sender: flag)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let flagDefVC = segue.destination as! flagViewController
        flagDefVC.flag = sender as! String
    }
    
}
