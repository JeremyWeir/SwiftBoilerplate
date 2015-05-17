//
//  ViewController.swift
//  SwiftBoilerplate
//
//  Created by Jeremy Weir on 5/16/15.
//  Copyright (c) 2015 OrgNameSB. All rights reserved.
//

import UIKit
import SharedFramework

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        var dataExample = DataExample()
        if let myValue = dataExample.getMyValue() {
            self.myTextField.text = myValue
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doSave() {
        var dataExample = DataExample()
        dataExample.setMyValue(self.myTextField.text!)
    }

}

