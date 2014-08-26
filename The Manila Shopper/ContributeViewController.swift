//
//  ContributeViewController.swift
//  The Manila Shopper
//
//  Created by Joshua on 8/26/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

import UIKit

class ContributeViewController: UIViewController {

    @IBOutlet var textStore: UITextField!
    @IBOutlet var textName: UITextField!
    @IBOutlet var textDate: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
     /*
        if (sender as? UIBarButtonItem == self.doneButton) {
        
        promoManager.addPromo(textStore.text, name: textName.text, date: textDate.text)
        self.view.endEditing(true)
        textStore.text = ""
        textDate.text = ""
        textName.text = ""
        self.tabBarController.selectedIndex = 0
            
        }
    */
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
            
    }
    

}
