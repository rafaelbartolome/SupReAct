//
//  HeroMapper.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class HeroMapper {
    func process(dictionary: [String:AnyObject]) -> Hero {
        let hero = Hero(name: dictionary["HeroRealName"] as! String,
                        codeName: dictionary["HeroCodeName"] as! String,
                        imageName: dictionary["HeroPicture"] as! String,
                        powersDescription: dictionary["HeroPowersDescription"] as! String)

        return hero
    }
}
