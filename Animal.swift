//: Playground - noun: a place where people can play

import UIKit
import Foundation


enum AnimalHabitatType{
    
    case desert, tundra, rainForest, poles, safari, withHumans
    init?(habitat : AnimalHabitatType){
        
        switch habitat {
        case .desert:
            self = .desert
        case .poles:
            self = .poles
        case .tundra:
            self = .tundra
        case .rainForest :
            self = .rainForest
        case .safari :
            self = .safari
        case .withHumans :
            self = .withHumans
        default:
            return nil
        }
    }
    
}

enum AnimalSpeciesType{
    
    case mammal
    case reptile
    case bird
    
}

@objc protocol AnimalProtocol{
    
    @objc optional func makeSound() -> String // I can or cannot implement this function on the class that adopts thi optional protocol
    func sleep() -> String // I MUST implement this function to any class that adopts this protocol
    func eat() -> String // I MUST implement this function to any class that adopts this protocol
    func walk() -> String // I MUST implement this function to any class that adopts this protocol
    @objc optional func run() -> String // I can or cannot implement this function on the class that adopts thi optional protocol
    @objc optional func blendIn() -> String // I can or cannot implement this function on the class that adopts thi optional protocol
    
}

class AnimalType : AnimalProtocol{
    
    private var animalName : String
    private var species : AnimalSpeciesType
    private var habitat : AnimalHabitatType
    private var humanFriendly : Bool
    
    
                //INITIALIZER
    
    init(_ name : String,_ species : AnimalSpeciesType,_ habitat : AnimalHabitatType,_ humanFriendly : Bool){
        
        self.animalName = name
        self.habitat = habitat
        self.species = species
        self.humanFriendly = humanFriendly
    }
    
            //DEINITILIZER
    deinit {
        
        print("The instance has been deallocated")
    }
    
            //CLASS METHODS ... CAN OR CANNOT BE OVERRIDEN
    
    final func sleep() -> String{
        
        return "\(self.animalName) is sleeping"
    }
    func eat() -> String{
        
        return "\(self.animalName) is eating"
    }
    func walk() -> String{
        
        return "\(self.animalName) is walking"
    }
    
    func makeSound() -> String {
        
        return "\(self.animalName) is making sounds"
    }
    
    func blendIn() -> String {
        
        return "\(self.animalName) is camouflaging into the \(self.habitat)"
    }
    
    final func run() -> String {
        
        return "\(self.animalName) is runnning"
    }
}

class Bird : AnimalType{
    
    override func makeSound() -> String{
        return "Bark Bark"
    }
    
    override func walk() -> String {
        return "The bird is flying"
    }
    
}




            // TESTING

var animal_one = AnimalType("Milos", AnimalSpeciesType.mammal, AnimalHabitatType.withHumans, true)
var animal_two = AnimalType("Simba", AnimalSpeciesType.mammal, AnimalHabitatType.safari, false)

print(animal_one.eat())
print(animal_two.walk())



