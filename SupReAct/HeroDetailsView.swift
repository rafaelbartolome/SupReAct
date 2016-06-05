//
//  HeroDetailsView.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 05/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

protocol HeroDetailsView {
    func updateHero(name realName: String)
    func updateHero(alias codeName: String)
    func updateHero(picture imageName: String)
    func updateHero(powers powersDescription: String)
}
