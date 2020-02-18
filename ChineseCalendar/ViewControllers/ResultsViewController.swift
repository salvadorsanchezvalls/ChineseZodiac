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
    
    @IBOutlet weak var segControlZodiac: UISegmentedControl!
    
    @IBOutlet weak var lblAnimal: UILabel!
    @IBOutlet weak var imgAnimalIcon: UIImageView!
    
    @IBOutlet weak var stackCharacteristics: UIStackView!
    @IBOutlet weak var lblCharacteristics: UILabel!
    
    @IBOutlet weak var stackAspect: UIStackView!
    @IBOutlet weak var lblAspect: UILabel!
    @IBOutlet weak var imgAspect: UIImageView!
    
    @IBOutlet weak var stackElement: UIStackView!
    @IBOutlet weak var lblElement: UILabel!
    
    // MARK: - Data Variables
    var zodiac: Zodiac!
    
    // MARK: - Actions
    @IBAction func typeChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        
        if index != 0 {
            stackCharacteristics.isHidden = true
        } else {
            stackCharacteristics.isHidden = false
        }
        
        if index != 2 {
            stackAspect.isHidden = true
        } else {
            stackAspect.isHidden = false
        }
        
        if index != 3 {
            stackElement.isHidden = true
        } else {
            stackElement.isHidden = false
        }
    }
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = zodiac.elementBackground
        lblAnimal.text = zodiac.element.rawValue + " " + zodiac.animal.rawValue
        imgAnimalIcon.image = zodiac.animalIcon
        lblCharacteristics.text = zodiac.characteristics
        lblElement.text = zodiac.elementText
        imgAspect.image = zodiac.aspect.image
        lblAspect.text = zodiac.aspect.text
        
        typeChanged(segControlZodiac)
        
    }


}

