//
//  GetRealName.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class GetRealName {

    //Dependencies
    lazy var heroRepository: HeroRepository = HeroRepositoryImp()
    lazy var decriptService: DecriptService = DecriptServiceImp()

    func execute() -> String
    {
        let hero = heroRepository.nextHero()

        return decriptService.decript(heroName: hero.encriptedName)
    }
}
