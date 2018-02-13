//
//  ViewController.swift
//  Buggy
//
//  Created by Button IV, William J on 2/13/18.
//  Copyright © 2018 Button IV, William J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")
        
        badMethod()
        
        // Previous Examples Below
        // print("Called buttonTapped(_:)")
        // Log sender:
        // print("sender: \(sender)")
        // Log the control state:
        // print("Is control on? \(sender.isOn)")
    }

    func badMethod()
    {
        let array = NSMutableArray()
        
        for i in 0..<10
        {
            array.insert(i, at: i)
        }
        
        // Go one step too far emptying the array (notice the range change):
        
        for _ in 0...10
        {
            array.removeObject(at: 0)
        }
    }

}

