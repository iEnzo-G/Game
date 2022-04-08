//
//  Classe.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

// MARK: - Mage
class Mage: Character{
    init(name: String){
        super.init(name: name, healthPoints: 50, weaponType: .staff)
    }
}

// MARK: - Warrior
class Warrior: Character {
    init(name: String){
        super.init(name: name, healthPoints: 100, weaponType: .sword)
    }
}

// MARK: - Assassin
class Assasin: Character {
    init(name: String){
        super.init(name: name, healthPoints: 70, weaponType: .dagger)
    }
}
