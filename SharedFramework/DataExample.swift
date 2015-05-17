//
//  DataExample.swift
//  SwiftBoilerplate
//
//  Created by Jeremy Weir on 5/16/15.
//  Copyright (c) 2015 OrgNameSB. All rights reserved.
//

import Foundation

public class DataExample{
    
    // this needs to match what you set up for app group names on your targets' capabilities app group
    let suiteName = "group.sb.orgid.appgroup"
    
    public init(){
        
    }
    
    public func setMyValue(myValue: String) {
        if let defaults = NSUserDefaults(suiteName: self.suiteName){
            defaults.setObject(myValue, forKey: "myValue")
            defaults.synchronize()
        }
    }
    
    public func getMyValue() -> String! {
        var defaults = NSUserDefaults(suiteName: self.suiteName)
        if let defaults = NSUserDefaults(suiteName: self.suiteName){
            defaults.synchronize()
            return defaults.objectForKey("myValue") as? String
        }
        
        return nil
    }
    
}