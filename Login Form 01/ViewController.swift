//
//  ViewController.swift
//  Login Form 01
//
//  Created by R. Kukuh on 18/02/18.
//  Copyright © 2018 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pinField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        let email : String = emailField.text!
        let pin : String = pinField.text!
        
        if email.isEmpty || pin.isEmpty {
            
            print("Email / PIN is required !")
            
            return;
        }
        
        if (email == "admin@admin.com") && (pin == "1234") {
            
            let alert = UIAlertController(title: "Sukses",
                                          message: "Welcome back, Super Admin!",
                                          preferredStyle: .alert)
            
            let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(OkAction)
            
            present(alert, animated: true, completion: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Gagal",
                                          message: "Your Email / PIN Incorrect!",
                                          preferredStyle: .alert)
            
            let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(OkAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
}
