//
//  User.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 8/2/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class User {
    
    var userId: String
    var email: String
    var username: String
    var fullName: String
    
    // Declare properties with an optional type that will be set later on
//    var birthday: String?
//    var phoneNumber: String?
//    var profilePhoto: String?
    
    // Initializer without the optional parameters that can be set at a later time
    init(userId: String, email: String, username: String, fullName: String) {
        
        self.userId = userId
        self.email = email
        self.username = username
        self.fullName = fullName
        
    }
    
    // Function that returns the user data
    func displayUser() {
        let userInfo = "userId: \(userId), email: \(email), username: \(username), fullName: \(fullName), "
        
        print("\(userInfo)")
    }
   

}
