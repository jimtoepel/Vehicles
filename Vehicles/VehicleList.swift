//
//  VehicleList.swift
//  Vehicles
//
//  Created by Jim Toepel on 1/1/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import Foundation


class VehicleList {
    
    let vehicles:[Vehicle] = []
    
    class var sharedInstance: VehicleList {
        struct Singleton {
            static let instance = VehicleList()
        }
        return Singleton.instance
    }
    
    
    init() {
        
        // creating a car
        var mustang = Car(brandName: "Ford", modelName: "Mustang", modelYear: 1968, powerSource: "gas engine", isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2)
        
        // add it to the array
        vehicles.append(mustang)
        
        
        // create another car.
        var outback = Car(brandName: "Subaru", modelName: "Outback", modelYear: 1999, powerSource: "gas engine", isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5)
        
        // adding it to the array
        vehicles.append(outback)
        
        
        // create another car
        var prius = Car(brandName: "Toyota", modelName: "Prius", modelYear: 2002, powerSource: "hybrid engine", isConvertible: false, isHatchback: true, hasSunroof: true, numberOfDoors: 4)
        // adding it
        vehicles.append(prius)
        
        
        // create another car
        var models = Car(brandName: "Tesla", modelName: "Model S", modelYear: 2014, powerSource: "electric engine", isConvertible: false, isHatchback: false, hasSunroof: true, numberOfDoors: 4)
        
        // adding it
        vehicles.append(models)
        
        
        // first motorcycle
        var harley = Motorcycle(brandName: "Harley-Davidson", modelName: "Softail", modelYear: 1979, engineNoise: "Vrrrrrooooooom!")
        
        // adding it
        vehicles.append(harley)
        
        
        //another motorcycle
        var kawasaki = Motorcycle(brandName: "Kawasaki", modelName: "Ninja", modelYear: 2005, engineNoise: "NEEEEEeeeeoooooW!")
        
        //adding it
        vehicles.append(kawasaki)
        
        
        // first truck
        var silverado = Truck(brandName: "Chevrolet", modelName: "Silverado", modelYear: 2011, powerSource: "gas engine", numberOfWheels: 4, cargoCapacityInCubicFeet: 53)
        
        // adding it
        vehicles.append(silverado)
        
        
        //second truck
        var eighteenWheeler = Truck(brandName: "Peterbuilt", modelName: "579", modelYear: 2013, powerSource: "diesel engine", numberOfWheels: 18, cargoCapacityInCubicFeet: 408)
        
        //adding it
        vehicles.append(eighteenWheeler)
        
        
        // sort by model year
        vehicles.sort { $0.modelYear < $1.modelYear }
        
    }
    
}