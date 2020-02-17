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
        
        chooseZodiacByDate()
        
        destination.zodiac = zodiac
    }
    
    // MARK: - Othar Functions
    func chooseZodiacByDate() {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let chosenDate = pckBirthDate.date
        
        if formatter.date(from: "06/02/1989")! <= chosenDate
            && formatter.date(from: "26/01/1990")! >= chosenDate{
            
            zodiac = Zodiac(animal: .snake, element: .earth)
        }
        else if formatter.date(from: "27/01/1990")! <= chosenDate
            && formatter.date(from: "14/02/1991")! >= chosenDate{
            
            zodiac = Zodiac(animal: .horse, element: .metal)
        }
        else if formatter.date(from: "15/02/1991")! <= chosenDate
            && formatter.date(from: "03/02/1992")! >= chosenDate {
            
            zodiac = Zodiac(animal: .goat, element: .metal)
        }
        else if formatter.date(from: "04/02/1992")! <= chosenDate
            && formatter.date(from: "22/01/1993")! >= chosenDate{
            
            zodiac = Zodiac(animal: .monkey, element: .water)
        }
        else if formatter.date(from: "23/01/1993")! <= chosenDate
            && formatter.date(from: "09/02/1994")! >= chosenDate {
            
            zodiac = Zodiac(animal: .rooster, element: .water)
        }
        else if formatter.date(from: "10/02/1994")! <= chosenDate
            && formatter.date(from: "30/01/1995")! >= chosenDate {
            
            zodiac = Zodiac(animal: .dog, element: .wood)
        }
        else if formatter.date(from: "31/01/1995")! <= chosenDate
            && formatter.date(from: "18/02/1996")! >= chosenDate {
            
            zodiac = Zodiac(animal: .pig, element: .wood)
        }
        else if formatter.date(from: "19/02/1996")! <= chosenDate
            && formatter.date(from: "07/02/1997")! >= chosenDate {
            
            zodiac = Zodiac(animal: .rat, element: .fire)
        }
        else if formatter.date(from: "08/02/1997")! <= chosenDate
            && formatter.date(from: "27/01/1998")! >= chosenDate {
            
            zodiac = Zodiac(animal: .ox, element: .fire)
        }
        else if formatter.date(from: "28/01/1998")! <= chosenDate
            && formatter.date(from: "15/02/1999")! >= chosenDate {
            
            zodiac = Zodiac(animal: .tiger, element: .earth)
        }
        else if formatter.date(from: "16/02/1999")! <= chosenDate
            && formatter.date(from: "04/02/2000")! >= chosenDate {
            
            zodiac = Zodiac(animal: .hare, element: .earth)
        }
        else if formatter.date(from: "05/02/2000")! <= chosenDate
            && formatter.date(from: "23/01/2001")! >= chosenDate {
            
            zodiac = Zodiac(animal: .dragon, element: .metal)
        }
        
    }


}

