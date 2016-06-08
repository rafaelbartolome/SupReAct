//
//  HeroRepositoryImp.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class HeroRepositoryImp: HeroRepository {

    //Dependencies
    lazy var heroStorage = HeroStorage()
    lazy var remoteAPIService = ShieldAPIService()
    lazy var heroMapper = HeroMapper()

    init() {
        remoteAPIService.getHeroes{
            [weak self] heroDictionary in
            if let hero = self?.heroMapper.process(heroDictionary) {
                self?.heroStorage.add(hero)
            }
        }
    }

    func nextHero() -> Hero {
        return heroStorage.nextHero()
    }
}