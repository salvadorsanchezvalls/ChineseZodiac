//
//  Zodiac.swift
//  ChineseCalendar
//
//  Created by user164572 on 15/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit
import Foundation

struct Zodiac: Codable {
   
    var animal: Animals
    var element: Elements
    
    static let archiveURL =
    FileManager.default.urls(for: .documentDirectory,
    in: .userDomainMask).first!.appendingPathComponent("Documents")
       .appendingPathExtension("plist")
    
    // MARK: - Text Variables
    
    var characteristics: String{
        switch animal {
        case .monkey:
            return "Independent, lively, ingenious, funny, daring, creative."
        case .rooster :
            return "Courageous, protector, beautiful, capable, communicative, honest."
        case .dog:
            return "Loyal, responsible, sensible, moral, trustforthy, imaginative."
        case .pig:
            return "Sensual, generous, cheerful, tolerant, happy, enthusiast."
        case .rat:
            return "Ingenious, ambitious, hard-working, purposeful, laborious, intelligent."
        case .ox:
            return "Patient, corageous, conventional, trustworthy, determined, intelligent."
        case .tiger:
            return "Daring, tiring, passionate, fast, dangerous, funny."
        case .hare:
            return "Generous, intuitive, careful, selfish, discreet, sensible."
        case .dragon:
            return "Enthusiast, daring, inspiring, winner, materialistic, independent."
        case .snake:
            return "Intelligent, mysterious, intuitive, daring, orderly, sophisticated."
        case .horse:
            return "Loyal, hard-working, gregarious, cordial, energetic, popular."
        case .goat:
            return "Pacific, adaptable, honest, creative, imaginative, sincere."
        }
    }
    
    var elementText: String {
        switch element {
        case .metal:
            return "Great affinity with water, as metal keeps it contained within."
        case .water:
            return "Great affinity with wood, as trees are watered with water."
        case .earth:
            return "Great affinity with metal, as the earth creates metal deep wihin."
        case .wood:
          return "Great affinity with fire, as it's used as base material for flames."
        case .fire:
            return "Great affinity with earth, as it turns wood into ashes that will be earth once again."
        }
    }
    
    // MARK: - Image Variables
    var elementBackground: UIImage {
        switch element {
        case .metal:
            return UIImage(named: "metalElement")!
        case .water:
            return UIImage(named: "waterElement")!
        case .earth:
            return UIImage(named: "earthElement")!
        case .wood:
            return UIImage(named: "woodElement")!
        case .fire:
            return UIImage(named: "fireElement")!
        }
    }
    
    var aspect: (image: UIImage, text: String) {
        switch animal {
        case .monkey:
            return (UIImage(named: "yang")!, "Early Fall. Minor Yang.")
        case .rooster :
            return (UIImage(named: "yin")!, "Mid-Fall. Major Yin.")
        case .dog:
            return (UIImage(named: "yang")!, "Late Fall. Minor Yang.")
        case .pig:
            return (UIImage(named: "yin")!, "Early Winter. Major Yin.")
        case .rat:
            return (UIImage(named: "yang")!, "Mid-Winter. Minor Yang.")
        case .ox:
            return (UIImage(named: "yin")!, "Late Winter. Major Yin.")
        case .tiger:
            return (UIImage(named: "yang")!, "Early Spring. Major Yang.")
        case .hare:
            return (UIImage(named: "yin")!, "Mid-Spring. Minor Yin.")
        case .dragon:
            return (UIImage(named: "yang")!, "Late Spring. Major Yang.")
        case .snake:
            return (UIImage(named: "yin")!, "Early Summer. Minor Yin.")
        case .horse:
            return (UIImage(named: "yang")!, "Mid-Summer. Major Yang.")
        case .goat:
            return (UIImage(named: "yin")!, "Late Summer. Minor Yin.")
        }
    }
    
    var animalIcon: UIImage {
        switch animal {
        case .monkey:
            return UIImage(named: "Monkey")!
        case .rooster :
            return UIImage(named: "Rooster")!
        case .dog:
            return UIImage(named: "Dog")!
        case .pig:
            return UIImage(named: "Pig")!
        case .rat:
            return UIImage(named: "Rat")!
        case .ox:
            return UIImage(named: "Ox")!
        case .tiger:
            return UIImage(named: "Tiger")!
        case .hare:
            return UIImage(named: "Hare")!
        case .dragon:
            return UIImage(named: "Dragon")!
        case .snake:
            return UIImage(named: "Snake")!
        case .horse:
            return UIImage(named: "Horse")!
        case .goat:
            return UIImage(named: "Goat")!
        }
    }
    
    
    var affinities: (animalLeft: (image: UIImage, text: String),
                    animalRight: (image: UIImage, text: String)) {
        switch animal {
        case .monkey:
            return ((UIImage(named: "Rat")!, "Rat"),
                    (UIImage(named: "Dragon")!, "Dragon"))
        case .rooster :
            return ((UIImage(named: "Snake")!, "Snake"),
                    (UIImage(named: "Ox")!, "Ox"))
        case .dog:
            return ((UIImage(named: "Tiger")!, "Tiger"),
                    (UIImage(named: "Horse")!, "Horse"))
        case .pig:
            return ((UIImage(named: "Hare")!, "Hare"),
                    (UIImage(named: "Goat")!, "Goat"))
        case .rat:
            return ((UIImage(named: "Dragon")!, "Dragon"),
                    (UIImage(named: "Monkey")!, "Monkey"))
        case .ox:
            return ((UIImage(named: "Snake")!, "Snake"),
                    (UIImage(named: "Rooster")!, "Rooster"))
        case .tiger:
            return ((UIImage(named: "Hare")!, "Hare"),
                    (UIImage(named: "Goat")!, "Goat"))
        case .hare:
            return ((UIImage(named: "Pig")!, "Pig"),
                    (UIImage(named: "Goat")!, "Goat"))
        case .dragon:
            return ((UIImage(named: "Rat")!, "Rat"),
                    (UIImage(named: "Monkey")!, "Monkey"))
        case .snake:
            return ((UIImage(named: "Rooster")!, "Rooster"),
                    (UIImage(named: "Ox")!, "Ox"))
        case .horse:
            return ((UIImage(named: "Tiger")!, "Tiger"),
                    (UIImage(named: "Dog")!, "Dog"))
        case .goat:
            return ((UIImage(named: "Dragon")!, "Dragon"),
                    (UIImage(named: "Monkey")!, "Monkey"))
        }
    }
    
    //MARK: - Data Management Functions
    static func saveToFile(zodiac: [Zodiac]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedZodiac = try? propertyListEncoder.encode(zodiac)
        
        try? encodedZodiac?.write(to: Zodiac.archiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> Zodiac? {
        let propertyListDecoder = PropertyListDecoder()
        
        if let retrievedZodiac = try? Data(contentsOf: Zodiac.archiveURL),
            let decodedZodiac = try? propertyListDecoder.decode(Array<Zodiac>.self, from: retrievedZodiac){
            
            return decodedZodiac.first
        }
        return nil
    }
    
    
    // MARK: - Enums
    enum Animals : String, Codable {
        case monkey     = "Monkey"
        case rooster    = "Rooster"
        case dog        = "Dog"
        case pig        = "Pig"
        case rat        = "Rat"
        case ox         = "Ox"
        case tiger      = "Tiger"
        case hare       = "Hare"
        case dragon     = "Dragon"
        case snake      = "Snake"
        case horse      = "Horse"
        case goat       = "Goat"
    }
    
    enum Elements : String, Codable {
        case metal  = "Metal"
        case water  = "Water"
        case earth  = "Earth"
        case wood   = "Wood"
        case fire   = "Fire"
    }
}
