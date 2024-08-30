//
//  Character.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import Foundation


enum Status : String, Decodable, Prettifiable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown
    
    var prettyString : String {
        switch self {
        case .alive:
            return "🪴 Alive"
        case .dead:
            return "💀 Dead"
        case .unknown:
            return "❓ Unknown"
        }
    }
}

enum Gender : String, Decodable, Prettifiable {
    
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown
    
    var prettyString: String {
        switch self {
        case .male:
            return "♂︎ Male"
        case .female:
            return "♀︎ Female"
        case .genderless:
            return "⚬ Genderless"
        case .unknown:
            return "❓ Unkown"
        }
    }
    
}
func statusFromString(_ statusString: String) -> Status {
       switch statusString.lowercased() {
       case "alive":
           return .alive
       case "dead":
           return .dead
       default:
           return .unknown
       }
   }

func genderFromString(_ genderString: String) -> Gender {
       switch genderString.lowercased() {
       case "male":
           return .male
       case "female":
           return .female
       case "genderless":
           return .genderless
       default:
           return .unknown
       }
   }

class Character : Identifiable {
    

    let id : String
    let name : String
    let status : Status
    let species : String
    let type : String
    let gender : Gender
    let image : String
    

    init(id: String, name: String, statusString: String, species: String, type: String, genderString: String, image: String) {
          self.id = id
          self.name = name
          self.status = statusFromString(statusString)
          self.species = species
          self.type = type
          self.gender = genderFromString(genderString)
          self.image = image
      }
    
  
}

extension Character : Equatable {
    
    static func == (lhs: Character, rhs: Character) -> Bool {
        lhs.id == rhs.id
    }
    
}
