//
//  ViewController.swift
//  Tips
//
//  Created by Tanvi Agarwalla on 12/31/15.
//  Copyright © 2015 Tanvi Agarwalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text="$0.00"
        totalLabel.text="$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPerc = [0.15, 0.2, 0.25]
        
        var tp = tipPerc[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = tp * billAmount
        var total = tip + billAmount
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }
    
    @IBAction func RealTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func Tapp(sender: AnyObject) {
        view.endEditing(true)
    }
}

