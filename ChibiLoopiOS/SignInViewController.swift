//
//  SignInViewController.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 9/20/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

import AWSAuthUI
import AWSGoogleSignIn

class SignInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Optionally check if the user is logged in using AWSSignInManager.sharedInstance().isLoggedIn
        presentAuthUIViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentAuthUIViewController() {
        let config = AWSAuthUIConfiguration()
        config.addSignInButtonView(class: AWSGoogleSignInButton.self)
        // you can use properties like logoImage, backgroundColor to customize screen
        // config.canCancel = false // this will disallow
        // end user to dismiss sign in screen
        
        // you should have a navigation controller for your view controller
        // the sign in screen is presented using the navigation controller
        
        AWSAuthUIViewController.presentViewController(
            with: navigationController!,  // Put your navigation controller here
            configuration: config,
            completionHandler: {(
                _ signInProvider: AWSSignInProvider, _ error: Error?) -> Void in
                if error == nil {
                    DispatchQueue.main.async(execute: {() -> Void in
                        // handle successful callback here, e.g.
                        // pop up to show successful sign in
                    })
                    
                }
                else {
                    // Take user login error
                }
        })
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
//    @IBAction func unwindtoSignInVC(_ sender: UIStoryboardSegue) {
//        print("Sign In button was pressed, back to Sign In VC")
//    }


}
