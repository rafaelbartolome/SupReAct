//
//  AppDelegate.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 05/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        createDummyData()

        return true
    }

}

private extension AppDelegate {

    func createDummyData() {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject("Tony Stark", forKey: "HeroRealName")
        userDefaults.setObject("Iron Man", forKey: "HeroCodeName")
        userDefaults.setObject("Ironman", forKey: "HeroPicture")
        userDefaults.setObject("Genius-level intellect. Highly proficient scientist, engineer, and businessperson. Powered armored suit.", forKey: "HeroPowersDescription")
    }

}
