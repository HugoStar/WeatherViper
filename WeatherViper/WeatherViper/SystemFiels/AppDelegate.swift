//
//  AppDelegate.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 26/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var customWindow: CustomWindow?
  var window: UIWindow? {
    get {
      customWindow = customWindow ?? CustomWindow(frame: UIScreen.main.bounds)
      return customWindow
    }
    set { }
  }
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    return true
  }
}

