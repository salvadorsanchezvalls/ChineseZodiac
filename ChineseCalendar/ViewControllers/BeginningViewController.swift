//
//  BeginningViewController.swift
//  ChineseCalendar
//
//  Created by user164572 on 20/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit

class BeginningViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var stackLastZodiac: UIStackView!
    @IBOutlet weak var lblLastZodiac: UILabel!
    @IBOutlet weak var btnLastZodiac: UIButton!
    
    // MARK: - Data Variables
    var zodiac: Zodiac!
    
    @IBAction func accessingLastZodiac(_ sender: UIButton) {
        performSegue(withIdentifier: "lastZodiacSegue", sender: nil)
    }
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let zodiac = Zodiac.loadFromFile(){
            stackLastZodiac.isHidden = false
            self.zodiac = zodiac
            lblLastZodiac.text = zodiac.element.rawValue + " " + zodiac.animal.rawValue
        } else {
            stackLastZodiac.isHidden = true
        }
    }
    
    // MARK: - Navigation Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ResultsViewController else { return }
        
        destination.zodiac = zodiac
    }

}
