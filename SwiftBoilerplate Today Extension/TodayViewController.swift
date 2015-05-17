//
//  TodayViewController.swift
//  SwiftBoilerplate Today Extension
//
//  Created by Jeremy Weir on 5/16/15.
//  Copyright (c) 2015 OrgNameSB. All rights reserved.
//

import UIKit
import NotificationCenter
import SharedFramework

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var myTodayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.

        var dataExample = DataExample()
        if let myValue = dataExample.getMyValue() {
            self.myTodayLabel.text = myValue
        }
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}
