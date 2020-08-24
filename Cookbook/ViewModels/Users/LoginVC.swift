//
//  LoginVC.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 24/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginVC: UIViewController {

    @IBOutlet weak var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
      super.viewDidLoad()

      GIDSignIn.sharedInstance()?.presentingViewController = self

      // Automatically sign in the user.
//      GIDSignIn.sharedInstance()?.restorePreviousSignIn()
    }

}
