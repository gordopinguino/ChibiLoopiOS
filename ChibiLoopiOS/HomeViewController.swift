//
//  HomeViewController.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 8/18/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
        
        
        let user1 = User(userId: "1", email: "user1@email.com", username: "user1", password: "password1", firstName: "user", lastName: "one", birthday: nil, phoneNumber: nil, profilePhoto: nil)
        // test adding birthday data
        user1.displayUser()
        user1.birthday = "01/21/1992"
        user1.displayUser()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
