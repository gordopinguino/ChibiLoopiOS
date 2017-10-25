//
//  UserProfileViewController.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 10/25/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    // MARK: - Properties
    // Image
    @IBOutlet weak var profileImage: UIImageView!
    
    // Labels
    @IBOutlet weak var followerCount: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    @IBOutlet weak var postsCount: UILabel!
    @IBOutlet weak var timesLooped: UILabel!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var profileBio: UILabel!
    @IBOutlet weak var websiteLink: UILabel!
    
    // Collection View
    @IBOutlet var loopsCollectionView: [UICollectionView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
