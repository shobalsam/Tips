//
//  ViewController.swift
//  tips
//
//  Created by Shobal Sam on 12/5/15.
//  Copyright © 2015 Shobal Sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      self.view.viewWithTag(2)?.hidden = true
        
        
        tipLabel.text = "$0.00";
        totalLabel.text = "$0.00";
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanges(sender: AnyObject) {
        
        if (billField.text!.isEmpty) {
            print("field is empty")
            self.view.viewWithTag(2)?.hidden = true
            
        } else {
            self.view.viewWithTag(2)?.hidden = false
            
            
        }
        
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var defaultTip:Double = 0
        defaultTip = defaults.doubleForKey("defaultTipSaved")
        
        print("\(defaultTip) is the default tip.")
        
        let tipPercentages = [defaultTip, 0.18, 0.20, 0.22]
        
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

