//
//  SignUpViewController.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 9/20/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Determine what input fields should be displayed to the user
        displayInputFields()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: User Input
    
    func displayInputFields() {
        print("Counter starts at \(counter)")
        
        switch counter {
        case 0:
            // Display emailLabel and emailTextfield
            hideInputFields()
            emailLabel.isHidden = false
            emailTextField.isHidden = false
            signInButton.isHidden = false
            break
        case 1:
            hideInputFields()
            usernameLabel.isHidden = false
            usernameTextField.isHidden = false
            backButton.isHidden = false
            break
        case 2:
            hideInputFields()
            passwordLabel.isHidden = false
            passwordTextField.isHidden = false
            confirmPasswordTextField.isHidden = false
            backButton.isHidden = false
            break
        case 3:
            hideInputFields()
            nameLabel.isHidden = false
            nameTextField.isHidden = false
            skipButton.isHidden = false
            backButton.isHidden = false
            break
        case 4:
            hideInputFields()
            phoneLabel.isHidden = false
            phoneTextField.isHidden = false
            skipButton.isHidden = false
            backButton.isHidden = false
            break
        default:
            print("Default")
            break
        }
    }
    
    func hideInputFields() {
        emailLabel.isHidden = true
        emailTextField.isHidden = true
        usernameLabel.isHidden = true
        usernameTextField.isHidden = true
        passwordLabel.isHidden = true
        passwordTextField.isHidden = true
        confirmPasswordTextField.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        phoneLabel.isHidden = true
        phoneTextField.isHidden = true
        
        skipButton.isHidden = true
        backButton.isHidden = true
        signInButton.isHidden = true
    }
    
    @IBAction func userInputProgress(_ sender: UIButton) {
        counter = counter + 1
        displayInputFields()
        print("Next button was pressed. Counter is now \(counter)")
    }
    
    @IBAction func userInputBack(_ sender: UIButton) {
        counter = counter - 1
        displayInputFields()
        print("Back button was pressed. Counter is now \(counter)")
    }
    
    //MARK: UITextFieldDelegate
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        
//    }
    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        
//    }
    
    //MARK: Actions

}
