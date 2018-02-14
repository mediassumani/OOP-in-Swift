
// OOP in Swift. Created by Medi W. Assumani

import UIKit
import Foundation


enum AnimalHabitatType{
    
    case desert
    case tundra
    case rainForest
    case poles
    case safari
    
}

enum AnimalSpeciesType{
    
    case mammal
    case reptile
    case bird
    
}

@objc protocol Animal{
    
    @objc optional func makeSound() // I can or cannot implement this function on the class that adopts thi optional protocol
    func sleep() -> String // I MUST implement this function to any class that adopts this protocol
    func eat() -> String // I MUST implement this function to any class that adopts this protocol
    func walk() -> String // I MUST implement this function to any class that adopts this protocol
    @objc optional func run() -> String // I can or cannot implement this function on the class that adopts thi optional protocol
    @objc optional func blendIn() -> String // I can or cannot implement this function on the class that adopts thi optional protocol
    
}

final class AnimalType : Animal{
    
    private var animalName : String
    private var species : AnimalSpeciesType
    private var habitat : AnimalHabitatType
    private var humanFriendly : Bool
    
    
    init(name : String, species : AnimalSpeciesType, habitat : AnimalHabitatType, humanFriendly : Bool){
        
        self.animalName = name
        self.habitat = habitat
        self.species = species
        self.humanFriendly = humanFriendly
    }
    
    func sleep() -> String{
        
        return "The \(self.animalName) is sleeping"
    }
    
    func eat() -> String{
        
        return "The \(self.animalName) is eating"
    }
    
    func walk() -> String{
        
        return "The \(self.animalName) is walking"
    }
}
