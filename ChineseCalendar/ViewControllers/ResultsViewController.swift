//
//  ResultsViewController.swift
//  ChineseCalendar
//
//  Created by user164572 on 15/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var zodiac: Zodiac!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBAction func typeChanged(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = zodiac.elementBackground
        
    }


}

