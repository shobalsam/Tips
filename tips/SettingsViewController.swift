//
//  SettingsViewController.swift
//  tips
//
//  Created by Shobal Sam on 12/5/15.
//  Copyright © 2015 Shobal Sam. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipLabel: UILabel!
    @IBOutlet weak var defaultTipField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var defaultTip:Double = 0
        defaultTip = defaults.doubleForKey("defaultTipSaved") * 100
    
        
        defaultTipField.text = String(format: "%0.2f", defaultTip)
    }
    @IBOutlet weak var saveButton: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditChanged(sender: AnyObject) {
        
        
        
    }

    @IBAction func onButtonClick(sender: AnyObject) {
        //print("Button clicked")
        
        let defaultTip = NSString(string: defaultTipField.text!).doubleValue/100
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(defaultTip, forKey: "defaultTipSaved")
        defaults.synchronize()
    }
    /*
    @IBAction func onButtonClick(sender: AnyObject) {
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
