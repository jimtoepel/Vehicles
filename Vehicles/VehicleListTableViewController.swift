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
    cell.textLabel?.text = "\(vehicle)"
    return cell
  }
}

