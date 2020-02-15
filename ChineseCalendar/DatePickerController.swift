//
//  ViewController.swift
//  ChineseCalendar
//
//  Created by user164572 on 14/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit

class DatePickerController: UIViewController {

    @IBOutlet weak var pckBirthDate: UIDatePicker!
    @IBOutlet weak var findOutButton: UIButton!
    
    @IBAction func dateChanged(_ sender: Any) {
        findOutButton.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ResultsViewController else { return }
        
        destination.birthDate = pckBirthDate.date
    }


}

