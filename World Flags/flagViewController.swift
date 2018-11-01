//
//  flagViewController.swift
//  World Flags
//
//  Created by Bernard Ventura on 11/1/18.
//  Copyright © 2018 Bernard Ventura. All rights reserved.
//

import UIKit

class flagViewController: UIViewController {
    
    @IBOutlet var flagLabel: UILabel!
    @IBOutlet var flagOfLabel: UILabel!
    
    
    var flag = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        flagLabel.text = flag
        
        // ["🇨🇦","🇬🇧","🏴󠁧󠁢󠁥󠁮󠁧󠁿","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇺🇸"]
        
        if flag == "🇨🇦" {
            flagOfLabel.text = "Flag of Canada"
        }
        
        if flag == "🇬🇧" {
            flagOfLabel.text = "Flag of United Kingdom"
        }
        
        if flag == "🏴󠁧󠁢󠁥󠁮󠁧󠁿" {
            flagOfLabel.text = "Flag of England"
        }
        
        if flag == "🏴󠁧󠁢󠁳󠁣󠁴󠁿" {
            flagOfLabel.text = "Flag of Scotland"
        }
        
        if flag == "🇺🇸" {
            flagOfLabel.text = "Flag of United States"
        }
        
    }
    

}
