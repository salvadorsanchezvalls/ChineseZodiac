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
    
    //base outlets
    @IBOutlet weak var backgroundImage      : UIImageView!
    
    @IBOutlet weak var segControlZodiac     : UISegmentedControl!
    
    @IBOutlet weak var lblAnimal            : UILabel!
    @IBOutlet weak var imgAnimalIcon        : UIImageView!
    
    //characteristics outlets
    @IBOutlet weak var stackCharacteristics : UIStackView!
    @IBOutlet weak var lblCharacteristics   : UILabel!
    
    //affinity outlets
    @IBOutlet weak var stackAffinity        : UIStackView!
    @IBOutlet weak var imgAffinityLeft      : UIImageView!
    @IBOutlet weak var imgAffinityRight     : UIImageView!
    @IBOutlet weak var lblAffinityLeft      : UILabel!
    @IBOutlet weak var lblAffinityRight     : UILabel!
    
    //aspect outlets
    @IBOutlet weak var stackAspect          : UIStackView!
    @IBOutlet weak var lblAspect            : UILabel!
    @IBOutlet weak var imgAspect            : UIImageView!
    
    //element outlets
    @IBOutlet weak var stackElement         : UIStackView!
    @IBOutlet weak var lblElement           : UILabel!
    
    // MARK: - Data Variables
    var zodiac: Zodiac!
    
    // MARK: - Actions
    @IBAction func typeChanged(_ sender: UISegmentedControl) {
        updateUI()
    }
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillData()
        updateUI()
    }
    
    // MARK: - Generic Functions
    func fillData(){
        backgroundImage.image   = zodiac.elementBackground
        lblAnimal.text          = zodiac.element.rawValue + " " + zodiac.animal.rawValue
        imgAnimalIcon.image     = zodiac.animalIcon
        
        lblCharacteristics.text = zodiac.characteristics
        
        lblElement.text         = zodiac.elementText
        
        imgAspect.image         = zodiac.aspect.image
        lblAspect.text          = zodiac.aspect.text
        
        imgAffinityLeft.image   = zodiac.affinities.animalLeft.image
        imgAffinityRight.image  = zodiac.affinities.animalRight.image
        lblAffinityLeft.text    = zodiac.affinities.animalLeft.text
        lblAffinityRight.text   = zodiac.affinities.animalRight.text
    }
    
    func updateUI(){
        let index = segControlZodiac.selectedSegmentIndex
        
        if index != 0 {
            stackCharacteristics.isHidden = true
        } else {
            stackCharacteristics.isHidden = false
        }
        
        if index != 1 {
            stackAffinity.isHidden = true
        } else {
            stackAffinity.isHidden = false
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


}

