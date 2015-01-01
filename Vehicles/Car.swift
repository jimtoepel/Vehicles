//
//  Car.swift
//  Vehicles
//
//  Created by Jim Toepel on 12/31/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import Foundation


class Car: Vehicle {
    
    var isConvertible:Bool = false
    var isHatchback:Bool = false
    var hasSunroof:Bool = false
    var numberOfDoors:Int = 0
    
    override var vehicleDetails: String {
        // get basic details from superclass
        let basicDetails = super.vehicleDetails
        
        // Init mutable string
        var carDetailsBuilder = "\n\nCar-Specific Details:\n\n"
        
        // some helpers for bools
        
        let yes = "Yes\n"
        let no = "No\n"
        
        // add the specific car features
        
        carDetailsBuilder += "Has sunroof: "
        carDetailsBuilder += hasSunroof ? yes : no
        
        carDetailsBuilder += "Is Hatchback: "
        carDetailsBuilder += isHatchback ? yes : no
        
        carDetailsBuilder += "Is Convertible: "
        carDetailsBuilder += isConvertible ? yes : no
        
        carDetailsBuilder += "Number of doors: \(numberOfDoors)"
        
        // combine basic and car specific details
        let carDetails = basicDetails + carDetailsBuilder
        
        return carDetails
        
    }
    
    
    
    override init() {
        super.init()
        numberOfWheels = 4
    }
    
    
    // Private method implementations
    
    private func start() -> String {
        return String(format: "Start power source %@.", powerSource)
    }

    
    // Superclass overrides
    
    override func goForward() -> String {
        return String(format: "%@ %@ Then depress gas pedal.", start(), changeGears("Forward"))
    }
    
    
    override func goBackward() -> String {
        return String(format: "%@ %@ Check your rear view mirror. Then depress the gas pedal.", start(), changeGears("Reverse"))
    }
    
    
    override func stopMoving() -> String {
        return String(format: "Depress brake pedal. %@", changeGears("Park"))
    }

    
    override func makeNoise() -> String {
        return "Beep, Beep!"
    }


}
