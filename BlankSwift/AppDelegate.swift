//
//  AppDelegate.swift
//  BlankSwift
//
//  Created by Jordan Coff on 9/8/20.
//  Copyright © 2020 Jordan Coff. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let mainWindow = UIWindow(frame: UIScreen.main.bounds)
    let viewController = ViewController(nibName: nil, bundle: nil)
    let navController = UINavigationController(rootViewController: viewController)
    mainWindow.rootViewController = navController
    mainWindow.makeKeyAndVisible()
    window = mainWindow
    return true
  }
}
