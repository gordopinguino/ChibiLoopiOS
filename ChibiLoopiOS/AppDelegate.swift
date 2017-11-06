//
//  AppDelegate.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 8/2/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

import AWSAuthCore
import AWSAuthUI
import AWSCognito
import AWSCore
import AWSDynamoDB
import AWSPinpoint
import AWSS3
import AWSGoogleSignIn


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // AWSPinpoint
    var pinpoint: AWSPinpoint?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // --- AWSPinpoint ---
        
        // Initialize Pinpoint
        pinpoint = AWSPinpoint(configuration:
            AWSPinpointConfiguration.defaultPinpointConfiguration(launchOptions: launchOptions))
        
        // --- AWSAuthCore ---
        // set up the initialized flag
        var isInitialized = false
        
        // Set Google login scopes before authenticating the user.
        // Additional scopes can be added here if desired.
        AWSGoogleSignInProvider.sharedInstance().setScopes(["profile", "openid"])
        
        // Register the sign in provider instances with their unique identifier
        AWSSignInManager.sharedInstance().register(
            signInProvider: AWSGoogleSignInProvider.sharedInstance())
        
        let didFinishLaunching:Bool = AWSSignInManager.sharedInstance().interceptApplication(
            application, didFinishLaunchingWithOptions: launchOptions)
        
        if (!isInitialized) {
            AWSSignInManager.sharedInstance().resumeSession(completionHandler: {
                (result: Any?, error: Error?) in
                print("Result: \(result) \n Error:\(error)")
            })
            isInitialized = true
        }
        return didFinishLaunching
        
    }
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        
        // AWSCognito
        let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "us-east-1:56dbbe51-b45c-4eea-9d8b-8e5db8203849")
        let configuration = AWSServiceConfiguration(region: .USEast1, credentialsProvider: credentialProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

