//
//  HeroDetailsPresenter.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 05/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

final class HeroDetailsPresenter {
    func activate(with view: HeroDetailsView) {
        view.updateHero(name: getRealName())
        view.updateHero(alias: getCodeName())
        view.updateHero(picture: getImage())
        view.updateHero(powers: getPowers())
    }
}

private extension HeroDetailsPresenter {
    func getRealName() -> String {
        if let name = NSUserDefaults.standardUserDefaults().objectForKey("HeroRealName") as? String {
            return name
        }
        return ""
    }
    func getCodeName() -> String {
        if let name = NSUserDefaults.standardUserDefaults().objectForKey("HeroCodeName") as? String {
            return name
        }
        return ""
    }
    func getImage() -> String {
        if let name = NSUserDefaults.standardUserDefaults().objectForKey("HeroPicture") as? String {
            return name
        }
        return ""
    }
    func getPowers() -> String {
        if let name = NSUserDefaults.standardUserDefaults().objectForKey("HeroPowersDescription") as? String {
            return name
        }
        return ""
    }
}
