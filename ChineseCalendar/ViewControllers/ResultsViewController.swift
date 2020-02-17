//
//  ResultsViewController.swift
//  ChineseCalendar
//
//  Created by user164572 on 15/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    // MARK: - Outlets
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    // MARK: - Data Variables
    var zodiac: Zodiac!
    
    // MARK: - Actions
    @IBAction func typeChanged(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = zodiac.elementBackground
        
    }


}

