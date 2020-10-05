//
//  ViewController.swift
//  LoginSegue
//
//  Created by estedu6 theodore on 28/09/2020.
//  Copyright © 2020 ruben ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController{


    @IBOutlet weak var tefUsername: UITextField!
    @IBOutlet weak var tefPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        tefUsername.resignFirstResponder();
        tefPassword.resignFirstResponder();
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
       if let userNameString = tefUsername.text{
            if let passwordString = tefPassword.text{
                if (userNameString == "toto" && passwordString == "tito"){
                    
                    let alert = UIAlertController(title: "Good credentials",
                                                  message:
                        "Good username and password.", preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    
                    self.present(alert, animated: true)
                    
                }   else{
                    let alert = UIAlertController(title: "Wrong credentials",
                                                              message:
                                    "Please verify your username or password.", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    
                    self.present(alert, animated: true)
                    
                }
            }
        }
    }
}

//https://cours-info.iut-bm.univ-fcom.fr/upload/supports/LP/DeviOS/TP1-LogIn.pdf
