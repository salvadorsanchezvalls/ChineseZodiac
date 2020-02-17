//
//  ViewController.swift
//  ChineseCalendar
//
//  Created by user164572 on 14/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit

class DatePickerController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var pckBirthDate: UIDatePicker!
    @IBOutlet weak var findOutButton: UIButton!
    
    // MARK: - Data Variables
    var zodiac: Zodiac!
    
    // MARK: - Actions
    @IBAction func dateChanged(_ sender: Any) {
        findOutButton.isEnabled = true
    }
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - Navigation Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ResultsViewController else { return }
        
        //pckBirthDate.date
        
        zodiac = Zodiac(animal: .rat, element: .wood)
        
        destination.zodiac = zodiac
    }
    
    


}

