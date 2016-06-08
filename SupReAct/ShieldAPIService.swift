//
//  ShieldAPIService.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class ShieldAPIService {
    //Dummy API service
    func getHeroes(callback: ([String:AnyObject]) -> Void) {
        let heroDictionary = ["HeroRealName":"·$%$%&$%&%&/·$%",
                              "HeroCodeName" : "Iron Man",
                              "HeroPicture" : "Ironman",
                              "HeroPowersDescription" : "Genius-level intellect. Highly proficient scientist, engineer, and businessperson. Powered armored suit."
        ]

        return callback(heroDictionary)
    }
}