//
//  ViewController.swift
//  course
//
//  Created by Mac on 29/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Login"{
            let nav = segue.destination as! UINavigationController
            
            let controller = nav.topViewController as!  CoursesTableViewController
        }
    }
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
   
    let userName = "sami"
    let passWord = "sami"
    
    @IBAction func login(){
    
        if userName == username.text
        {
            if passWord == password.text{
                performSegue(withIdentifier: "Login", sender: self)
            }
            
        }else{
            return
        }
        
        
        
    }


}

