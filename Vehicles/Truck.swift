//
//  Truck.swift
//  Vehicles
//
//  Created by Jim Toepel on 1/1/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import Foundation


class Truck : Vehicle {
    var cargoCapacityCubicFeet: Int = 0
    
    override var vehicleDetails: String {
        //get the basic details from the superclass
        let basicDetails = super.vehicleDetails
        
        //init the mutable string
        var truckDetailsBuilder = "\n\nTruck-Specific Details:\n\n"
        
        //add info about truck specific features
        truckDetailsBuilder += "Cargo Capacity: \(cargoCapacityCubicFeet) cubic feet"
        
        //create the final string by combining the two
        let truckDetails = basicDetails + truckDetailsBuilder
        
        return truckDetails
    }
    
    
    
    // superclass overrides
    
    override func goForward() -> String {
        return String(format:"%@ Depress gas pedal.", changeGears("Drive"))
    }
    
    
    override func goBackward() -> String {
        if cargoCapacityCubicFeet > 100 {
            // sound the alarm first
            return String(format:"Wait for \"%@\", then %@", soundBackupAlarm(), changeGears("Reverse"))
        } else {
            return String(format:"Depress brake pedal, %@", changeGears("Park"))
        }
    }
    
    
    override func makeNoise() -> String {
        switch numberOfWheels {
        case Int.min...4:
            return "Beep beep!"
        case 5...8:
            return "Honk!"
        default:
            return "HOOOOOONNNKKK!!"
        }
    }
    
    
    
    // Private methods exclusive to the truck class
    private func soundBackupAlarm() -> String {
        return "Beep! Beep! Beep! Beep!"
    }

    
    
}