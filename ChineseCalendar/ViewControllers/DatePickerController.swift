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
    
    // MARK: - Other Functions
    func chooseZodiacByDate() {
        let chosenDate = pckBirthDate.date
        
        if formatDate(date: "06/02/1989") <= chosenDate
            && formatDate(date: "26/01/1990") >= chosenDate{
            
            zodiac = Zodiac(animal: .snake, element: .earth)
        }
        else if formatDate(date: "27/01/1990") <= chosenDate
            && formatDate(date: "14/02/1991") >= chosenDate{
            
            zodiac = Zodiac(animal: .horse, element: .metal)
        }
        else if formatDate(date: "15/02/1991") <= chosenDate
            && formatDate(date: "03/02/1992") >= chosenDate {
            
            zodiac = Zodiac(animal: .goat, element: .metal)
        }
        else if formatDate(date: "04/02/1992") <= chosenDate
            && formatDate(date: "22/01/1993") >= chosenDate{
            
            zodiac = Zodiac(animal: .monkey, element: .water)
        }
        else if formatDate(date: "23/01/1993") <= chosenDate
            && formatDate(date: "09/02/1994") >= chosenDate {
            
            zodiac = Zodiac(animal: .rooster, element: .water)
        }
        else if formatDate(date: "10/02/1994") <= chosenDate
            && formatDate(date: "30/01/1995") >= chosenDate {
            
            zodiac = Zodiac(animal: .dog, element: .wood)
        }
        else if formatDate(date: "31/01/1995") <= chosenDate
            && formatDate(date: "18/02/1996") >= chosenDate {
            
            zodiac = Zodiac(animal: .pig, element: .wood)
        }
        else if formatDate(date: "19/02/1996") <= chosenDate
            && formatDate(date: "07/02/1997") >= chosenDate {
            
            zodiac = Zodiac(animal: .rat, element: .fire)
        }
        else if formatDate(date: "08/02/1997") <= chosenDate
            && formatDate(date: "27/01/1998") >= chosenDate {
            
            zodiac = Zodiac(animal: .ox, element: .fire)
        }
        else if formatDate(date: "28/01/1998") <= chosenDate
            && formatDate(date: "15/02/1999") >= chosenDate {
            
            zodiac = Zodiac(animal: .tiger, element: .earth)
        }
        else if formatDate(date: "16/02/1999") <= chosenDate
            && formatDate(date: "04/02/2000") >= chosenDate {
            
            zodiac = Zodiac(animal: .hare, element: .earth)
        }
        else if formatDate(date: "05/02/2000") <= chosenDate
            && formatDate(date: "23/01/2001") >= chosenDate {
            
            zodiac = Zodiac(animal: .dragon, element: .metal)
        }
        
    }
    
    func formatDate(date: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter.date(from: date)!
    }


}

