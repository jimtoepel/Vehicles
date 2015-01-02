//
//  MasterViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleListTableViewController: UITableViewController {
  
  var vehicles:[Vehicle] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupVehicleArray()
    title = "Vehicles"
  }
  
    
func setupVehicleArray() {
      
    // Clear out the array
        
    vehicles.removeAll(keepCapacity: true)
    
    // creating a car
    var mustang = Car()
    mustang.brandName = "Ford"
    mustang.modelName = "Mustang"
    mustang.modelYear = 1968
    mustang.isConvertible = true
    mustang.isHatchback = false
    mustang.hasSunroof = false
    mustang.numberOfDoors = 2
    mustang.powerSource = "gas engine"
    
    // add it to the array
    
    vehicles.append(mustang)
    
    
    // create another car.
    
    var outback = Car()
    outback.brandName = "Subaru"
    outback.modelName = "Outback"
    outback.modelYear = 1999
    outback.isConvertible = false
    outback.isHatchback = true
    outback.hasSunroof = false
    outback.numberOfDoors = 5
    outback.powerSource = "gas engine"
    
    // adding it to the array
    
    vehicles.append(outback)
    
    
    // create another car
    var prius = Car()
    prius.brandName = "Toyota"
    prius.modelName = "Prius"
    prius.modelYear = 2002
    prius.isConvertible = false
    prius.isHatchback = true
    prius.hasSunroof = true
    prius.numberOfDoors = 5
    prius.powerSource = "hybrid engine"
    
    // adding it
    
    vehicles.append(prius)
        
    
    // create another car
    var models = Car()
    models.brandName = "Tesla"
    models.modelName = "Model S"
    models.modelYear = 2014
    models.isConvertible = false
    models.isHatchback = false
    models.hasSunroof = true
    models.numberOfDoors = 4
    models.powerSource = "electric engine"
    
    // adding it
    
    vehicles.append(models)
    
    
    // first motorcycle
    var harley = Motorcycle()
    harley.brandName = "Harley-Davidson"
    harley.modelName = "Softail"
    harley.modelYear = 1979
    harley.engineNoise = "Vrrrrrroooooooom!"
    
    // adding it
    
    vehicles.append(harley)
    
    
    //another motorcycle
    var kawasaki = Motorcycle()
    kawasaki.brandName = "Kawasaki"
    kawasaki.modelName = "Ninja"
    kawasaki.modelYear = 2005
    kawasaki.engineNoise = "NEEEEeeeeeoooooW!"
    
    //adding it
    
    vehicles.append(kawasaki)
    
    
    // first truck
    var silverado = Truck()
    silverado.brandName = "Chevrolet"
    silverado.modelName = "Silverado"
    silverado.modelYear = 2011
    silverado.numberOfWheels = 4
    silverado.cargoCapacityCubicFeet = 53
    silverado.powerSource = "gas engine"
    
    // adding it
    
    vehicles.append(silverado)
    
    
    //second truck
    var eighteenWheeler = Truck()
    eighteenWheeler.brandName = "Peterbuilt"
    eighteenWheeler.modelName = "579"
    eighteenWheeler.modelYear = 2013
    eighteenWheeler.numberOfWheels = 18
    eighteenWheeler.cargoCapacityCubicFeet = 408
    eighteenWheeler.powerSource = "diesel engine"
    
    //adding it
    
    vehicles.append(eighteenWheeler)
    
    
    // sort by model year
    vehicles.sort { $0.modelYear < $1.modelYear }

    }
    
    
  // MARK: - Segues
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showDetail" {
      if let indexPath = self.tableView.indexPathForSelectedRow() {
        let vehicle = vehicles[indexPath.row]
        (segue.destinationViewController as VehicleDetailViewController).detailVehicle = vehicle
      }
    }
  }
  
  // MARK: - Table View
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return vehicles.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
    
    let vehicle = vehicles[indexPath.row] as Vehicle
    cell.textLabel?.text = vehicle.vehicleTitle
    return cell
  }
}

