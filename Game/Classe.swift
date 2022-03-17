//
//  Classe.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation


class Mage: Character{
    init(){
        super.init(characterName: "", healthPoints: 50, action: .canHeal, wearWeapon: .staff)
    }
    func actionMage() {
        super.action = .canHeal
    }
}

class Warrior: Character {
    init(){
        super.init(characterName: "", healthPoints: 100, action: .canAttack, wearWeapon: .sword)
    }
    func actionWarrior() {
        super.action = .canAttack
    }
}

class Assasin: Character {
    init(){
        super.init(characterName: "", healthPoints: 70, action: .canAttack, wearWeapon: .dagger)
    }
    func actionAssasin() {
        super.action = .canAttack
    }
}
