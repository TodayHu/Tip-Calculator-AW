//
//  InterfaceController.swift
//  Tip Calculator AW WatchKit Extension
//
//  Created by Bruce Milyko on 1/17/15.
//  Copyright (c) 2015 Bruce D Milyko. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var mealCostLabel: WKInterfaceLabel!
    var mealCost: Float = 30.0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderAdjusted(value: Float) {
        self.mealCostLabel.setText(String(format: "$%.2f",value))
        self.mealCost = value
    }
    
    @IBAction func tenTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.mealCost,"tipPercentage":0.1])
    }
    
    @IBAction func fifteenTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.mealCost,"tipPercentage":0.15])
    }
    
    @IBAction func twentyTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.mealCost,"tipPercentage":0.20])
    }
}
