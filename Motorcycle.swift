//
//  Cycle.swift
//  Vehicles
//
//  Created by Jim Toepel on 1/1/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import Foundation


class Motorcycle : Vehicle {
    
    var engineNoise = ""
    
    override var vehicleDetails: String {
        // get the basic details from the superclass
        let basicDetails = super.vehicleDetails
        
        // initialize mutable string
        var motorcycleDetailsBuilder = "\n\nMotorcycle-Specific Details:\n\n"
        
        // here are the motorcycle specific features
        motorcycleDetailsBuilder += "Engine Noise: \(engineNoise)"
        
        let motorcycleDetails = basicDetails + motorcycleDetailsBuilder
        
        return motorcycleDetails
    }
    
    
    override init() {
        super.init()
        numberOfWheels = 2
        powerSource = "gas engine"
    }
    
    
    // Superclass overrides
    
    override func goForward() -> String {
        return String(format: "%@ Open throttle.", changeGears("Forward"))
    }
    
    
    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet", changeGears("Neutral"), modelName)
    }
    
    
    override func stopMoving() -> String {
        return "Squeeze brakes"
    }
    
    
    override func makeNoise() -> String {
        return self.engineNoise
    }
    
    
}