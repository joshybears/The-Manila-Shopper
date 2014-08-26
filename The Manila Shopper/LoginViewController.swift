//
//  ViewController.swift
//  The Manila Shopper
//
//  Created by Joshua on 8/26/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func login_with_twitter_click(sender: UIButton) {
        println("Logging in with Twitter...")
        PFTwitterUtils.logInWithBlock {
            (user: PFUser!, error: NSError!) -> Void in
            if !user {
                println("Uh oh. The user cancelled the Twitter login.")
            } else if user.isNew {
                println("User signed up and logged in with Twitter!")
            } else {
                println("User logged in with Twitter!")
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

