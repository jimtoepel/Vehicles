//
//  Vehicle.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import Foundation

class Vehicle {
    
    var brandName = "null"
    var modelName = "null"
    var modelYear = 0
    var powerSource = "null"
    var numberOfWheels = 0
  
    
    func goForward() -> String {
        return "null"
    }
    
    
    func goBackward() -> String {
        return "null"
    }
    
    
    func stopMoving() -> String {
        return "null"
    }
    
    
    func turn (degrees:Int) -> String {
        var normalizedDegrees = degrees
        
        //There are only 360 degrees in a circle, we need to calc what a single turn would be
        let degreesInACircle = 360
        
        if (normalizedDegrees > degreesInACircle || normalizedDegrees < -degreesInACircle) {
            normalizedDegrees = normalizedDegrees % degreesInACircle
        }
        
        return String(format: "Turn %d degrees.", normalizedDegrees)
        
    }
    
    
    func changeGears(newGearName:String) -> String {
        return String(format: "Put %@ into %@ gear.",self.modelName, newGearName)
    }
    
    
    func makeNoise() -> String {
        return "null"
    }    
    
    
}


