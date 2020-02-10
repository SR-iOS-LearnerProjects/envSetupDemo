//
//  AppDelegate.swift
//  Env Setup Demo
//
//  Created by Sridatta Nallamilli on 08/02/20.
//  Copyright © 2020 Sridatta Nallamilli. All rights reserved.
//

import UIKit


enum Environment: String {
    case development
    case production
    case none
}

var environment: Environment = .none


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        #if DEVELOPMENT
        environment = .development
        #else
        environment = .production
        #endif
        
        switch environment {
        case .none:
            print("Environment => None\n==========================\n\n")
        case .development:
            print("Environment => Development\n==========================\n\n")
        case .production:
            print("Environment => Production\n==========================\n\n")
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

