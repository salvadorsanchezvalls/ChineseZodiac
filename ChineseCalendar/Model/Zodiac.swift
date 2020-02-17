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
    var aspect: String {
        switch animal {
        case .monkey:
            return "Monkey: Early Fall. Minor Yang."
        case .rooster :
            return "Roost: Mid-Fall. Mayor Yin."
        case .dog:
            return "Dog: Late Fall. Minor Yang."
        case .pig:
            return "Pig: Early Winter. Mayor Yin."
        case .rat:
            return "Rat: Mid-Winter. Minor Yang."
        case .ox:
            return "Ox: Late Winter. Minor Yin."
        case .tiger:
            return "Tiger: Early Spring. Mayor Yang."
        case .hare:
            return "Hare: Mid-Spring. Minor Yin."
        case .dragon:
            return "Dragon: Late Spring. Mayor Yang."
        case .snake:
            return "Snake: Early Summer. Minor Yin."
        case .horse:
            return "Horse: Mid-Summer. Mayor Yang."
        case .goat:
            return "Goat: Late Summer. Minor Yin."
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
    
    // MARK: - Enums
    enum Animals {
        case monkey
        case rooster
        case dog
        case pig
        case rat
        case ox
        case tiger
        case hare
        case dragon
        case snake
        case horse
        case goat
    }
    
    enum Elements{
        case metal
        case water
        case earth
        case wood
        case fire
    }
}
