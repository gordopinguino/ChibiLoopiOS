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
    var password: String
    var firstName: String
    var lastName: String
    
    // Declare properties with an optional type that will be set later on
    var birthday: String?
    var phoneNumber: String?
    var profilePhoto: String?
    
    // Initializer without the optional parameters that can be set at a later time
    init(userId: String, email: String, username: String, password: String,
         firstName: String, lastName: String, birthday: String?,
         phoneNumber: String?, profilePhoto: String?) {
        
//        var dateOfBirth = String
//        var phone = String
//        var photo = String
//        
//        if (birthday == nil) {
//            dateOfBirth = nil
//        }
        
        
        self.userId = userId
        self.email = email
        self.username = username
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        
        if (birthday == nil) {
            self.birthday = nil
        } else {
            self.birthday = birthday
        }
        
        if (phoneNumber == nil) {
            self.phoneNumber = nil
        } else {
            self.phoneNumber = phoneNumber
        }
        
        if (profilePhoto == nil) {
            self.profilePhoto = nil
        } else {
            self.profilePhoto = profilePhoto
        }
        
        
    }
    
    // Function that returns the user data
    func displayUser() {
        let userInfo = "userId: \(userId), email: \(email), username: \(username), password: \(password), " +
        "firstName: \(firstName), lastName: \(lastName), birthday: \((String(describing: birthday))), " +
        "phoneNumber: \((String(describing: phoneNumber))), profilePhoto: \((String(describing: profilePhoto)))"
        
        print("\(userInfo)")
    }
   

}
