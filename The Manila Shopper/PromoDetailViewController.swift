//
//  PromoDetailViewController.swift
//  The Manila Shopper
//
//  Created by Joshua on 8/26/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

import UIKit

class PromoDetailViewController: UIViewController {

    var objectid = "GY1Ikk5UqG"
    @IBOutlet var store: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var datestart: UILabel!
    @IBOutlet var dateend: UILabel!
    @IBOutlet var desc: UILabel!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var query = PFQuery(className:"Promo")
        query.getObjectInBackgroundWithId("GY1Ikk5UqG") {
            (object: PFObject!, error: NSError!) -> Void in
            if !error {
                self.store.text = object["Name"] as String
                
                
            } else {
                NSLog("%@", error)
            }
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
