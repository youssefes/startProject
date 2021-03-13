//
//  AppDelegate.swift
//  delivery
//
//  Created by youssef on 3/13/21.
//  Copyright © 2021 youssef. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

     var window: UIWindow?
    var Coordinator : AppCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        Coordinator = AppCoordinator(Window: window!)
        
        Coordinator.start()
        return true
    }


}

