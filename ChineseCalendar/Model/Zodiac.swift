//
//  Struct.swift
//  ChineseCalendar
//
//  Created by user164572 on 15/02/2020.
//  Copyright © 2020 SSV. All rights reserved.
//

import UIKit
import Foundation

struct Zodiac {
   
    var animal: Animals
    var element: Elements
    
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
    
    
    // MARK: - Enums
    enum Animals : String {
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
    
    enum Elements : String{
        case metal  = "Metal"
        case water  = "Water"
        case earth  = "Earth"
        case wood   = "Wood"
        case fire   = "Fire"
    }
}
