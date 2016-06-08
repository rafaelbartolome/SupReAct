//
//  DecriptServiceImp.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class DecriptServiceImp: DecriptService {
    func decript(heroName encriptedName: String) -> String {
        return internalDecriptHeroName(encriptedName)
    }
}

private extension DecriptServiceImp {

    func internalDecriptHeroName(encriptedName: String) -> String {
        //TODO
        if let name = NSUserDefaults.standardUserDefaults().objectForKey("HeroRealName") as? String {
            return name
        }
        return ""
    }
}