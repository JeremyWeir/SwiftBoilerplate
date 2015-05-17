//
//  GlanceController.swift
//  SwiftBoilerplate WatchKit Extension
//
//  Created by Jeremy Weir on 5/16/15.
//  Copyright (c) 2015 OrgNameSB. All rights reserved.
//

import WatchKit
import Foundation
import SharedFramework

class GlanceController: WKInterfaceController {

    @IBOutlet weak var myGlanceLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var dataExample = DataExample()
        if let myValue = dataExample.getMyValue() {
            self.myGlanceLabel.setText(myValue)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
