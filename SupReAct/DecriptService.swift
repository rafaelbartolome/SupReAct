//
//  DecriptService.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 08/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import Foundation

protocol DecriptService {
    func decript(heroName encriptedName: String) -> String
}