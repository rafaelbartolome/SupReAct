//
//  Hero.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

struct Hero {
    private (set) var encriptedName: String
    private (set) var codeName: String
    private (set) var imageName: String
    private (set) var powersDescription:String

    init(name: String = "",
         codeName: String = "",
         imageName: String = "",
         powersDescription: String = "") {
        self.encriptedName = name
        self.codeName = codeName
        self.imageName = imageName
        self.powersDescription = powersDescription
    }
}