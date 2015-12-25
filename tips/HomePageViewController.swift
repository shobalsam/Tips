//
//  HomePageViewController.swift
//  tips
//
//  Created by Shobal Sam on 12/6/15.
//  Copyright © 2015 Shobal Sam. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var homePageTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homePageTextField.text = "$0.00"

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let secondVC = segue.destinationViewController as! ViewController
        secondVC.firstVCText = homePageTextField.text!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingDidBegin(sender: AnyObject) {
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
