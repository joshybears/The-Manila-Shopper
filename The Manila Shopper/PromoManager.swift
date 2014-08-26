//
//  PromoManager.swift
//  The Manila Shopper
//
//  Created by Joshua on 8/26/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

import UIKit

var promoManager: PromoManager = PromoManager()


struct Promo {
    var objct = "some-id"
    var store = "some-store"
    var name = "some-name"
    var date = "some-date"
}

class PromoManager: NSObject {
    
    var Promos = [Promo]()
    
    func refreshPromos(table :UITableView) {
        
        Promos.removeAll(keepCapacity: false)
        var promoquery = PFQuery(className:"Promo")
        promoquery.includeKey("Store")
        promoquery.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            if !error {
                // The find succeeded.
                NSLog("Successfully retrieved \(objects.count) scores.")
                // Do something with the found objects
                
                if let pfObjects = objects as? [PFObject!] {
                    for object in pfObjects {
                        
                        var tempstore = object["Store"]
                        tempstore["Name"]
                    
                        var temp = Promo(objct: object.objectId as String, store: object["Name"] as String, name: object["Name"] as String, date: object["Name"] as String)
                        self.Promos.append(temp)
                        println("hello")
                    }
                }
                
            } else {
                // Log details of the failure
                NSLog("Error: %@ %@", error, error.userInfo)
            }
            
            table.reloadData()
            
        }
    }
    
    func addPromo(store: String, name: String, date: String) {
        var newpromo = PFObject(className: "Promo")
        newpromo["store"] = store
        newpromo["name"] = name
        newpromo["date"] = date
        newpromo.saveInBackground()
    }
    
}
