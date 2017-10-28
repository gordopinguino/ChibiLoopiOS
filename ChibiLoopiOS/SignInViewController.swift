//
//  SignInViewController.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 9/20/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    let fakeUsername = "testUser"
    let fakePassword = "fakePassword"
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    enum LoginError: Error {
        case emptyTextField
        case invalidCredentials(attemptsRemaining: Int)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usernameTF.bottomBorder()
        passwordTF.bottomBorder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func loginUser(_ sender: UIButton) {
        
    }
    
    @IBAction func unwindtoSignInVC(_ sender: UIStoryboardSegue) {
        print("Sign In button was pressed, back to Sign In VC")
    }
    
//    func verifyUserLogin(username: String, password: String) -> Bool {
//        
//        let credentials = try validateNotEmpty(usernameTFText: username, passwordTFText: password)
//        
//        return false
//    }
    
//    func validateNotEmpty(usernameTFText: String, passwordTFText: String) -> (username: String?, password: String?) {
//
////        guard let usernameCheck = usernameTF.text else {
////
////        }
////
////        guard let passwordCheck = passwordTF.text else {
////
////        }
////
//        return (usernameCheck, passwordCheck)
//    }


}
