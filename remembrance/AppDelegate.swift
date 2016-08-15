//
//  AppDelegate.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/30/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  let stateController = StateController()
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    if let navigationController = window?.rootViewController as? UINavigationController,
      let toDoListTableViewController = navigationController.viewControllers.first as? ToDoListTableViewController {
      toDoListTableViewController.stateController = stateController
    }
    return true
  }
  
  func applicationWillResignActive(application: UIApplication) {
    stateController.save()
  }
  
  func applicationWillTerminate(application: UIApplication) {
    stateController.save()
  }
  
  
}

