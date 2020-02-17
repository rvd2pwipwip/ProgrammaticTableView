//
//  AppDelegate.swift
//  ProgrammaticTableView
//
//  Created by Herve Desrosiers on 2020-02-16.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 1. instantiate a new UIWindow with the size of our phone screen and assign it to the window property.
        window = UIWindow(frame: UIScreen.main.bounds)
        // 2. instantiate the view controller we want to display when the app launches and assign it to the rootViewController property of window
        window?.rootViewController = ViewController()
        // 3. make the window “key” and “visible”. Basically telling our app that this is our active window
        window?.makeKeyAndVisible()
        return true
    }

}

