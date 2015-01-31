//
//  ResultsController.swift
//  Tip Calculator AW
//
//  Created by Bruce Milyko on 1/29/15.
//  Copyright (c) 2015 Bruce D Milyko. All rights reserved.
//

import WatchKit
import Foundation


class ResultsController: WKInterfaceController {

    @IBOutlet weak var tipPercentageLable: WKInterfaceLabel!
    @IBOutlet weak var mealCostLabel: WKInterfaceLabel!
    @IBOutlet weak var tipAmountLabel: WKInterfaceLabel!
    @IBOutlet weak var totalLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var tipDictionary = context as [String:Float]
        var tipPercentage = tipDictionary["tipPercentage"]!
        var mealCost = tipDictionary["costOfMeal"]!
        var tipDollarAmount = tipPercentage * mealCost
        var totalCost = mealCost + tipDollarAmount
        
        self.tipPercentageLable.setText("\(tipPercentage)% Tip:")
        self.mealCostLabel.setText(String(format: "$%.2f",mealCost))
        self.tipAmountLabel.setText(String(format: "$%.2f",tipDollarAmount))
        self.totalLabel.setText(String(format: "$%.2f",totalCost))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
