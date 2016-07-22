//
//  AppDelegate.swift
//  DeploymentTestApp
//
//  Created by Sébastien Duperron on 01/09/2015.
//  Copyright (c) 2015 Viadeo. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Fabric.with([Crashlytics.self])
        return true
    }

}

