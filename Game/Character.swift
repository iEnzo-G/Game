//
//  File.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Character {
    var characterName: String
    var healthPoints: Int
    var action: TypeAction
    let wearWeapon: TypeWeapon

    /*      Main init with name, their HP, action possible and their weapon
     who define "HP transformer",if character heal(+) or attack(-)       */
    init(characterName: String, healthPoints: Int, action: TypeAction, wearWeapon: TypeWeapon){
        self.characterName = characterName
        self.healthPoints = healthPoints
        self.action = action
        switch action {
        case .canAttack:
            wait()
        case .canHeal:
            wait()
        }
        self.wearWeapon = wearWeapon
        switch wearWeapon {
        case .dagger:
            Weapon.init(damage: 35, healing: 0)
        case .sword:
            Weapon.init(damage: 25, healing: 0)
        case .staff:
            Weapon.init(damage: 10, healing: 25)
        }
        
    }
    func characterAction() {

    }
}
enum TypeAction { case canAttack; case canHeal }
enum TypeWeapon { case dagger; case sword; case staff }



