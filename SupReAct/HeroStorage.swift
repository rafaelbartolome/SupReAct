//
//  HeroStorage.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class HeroStorage {

    private var heroes: [Hero] = []
    private var heroIndex = 0

    func add(hero: Hero) {
        heroes.append(hero);
    }

    func nextHero() -> Hero {
        let hero = heroes[heroIndex]
        heroIndex += 1
        if heroIndex >= heroes.count {
            heroIndex = 0
        }
        
        return hero
    }
}