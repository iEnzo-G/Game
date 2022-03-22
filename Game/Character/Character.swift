//
//  File.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Character {
    
    //     MARK: - Properties
    let name: String
    var healthPoints: Int
    var weapon: Weapon
    
    //     MARK: - Initializer
    ///     Main init with name, their HP, action possible and their weapon
    ///     who define "HP transformer",if character heal(+) or attack(-)
    init(name: String, healthPoints: Int, weaponType: WeaponType){
        self.name = name
        self.healthPoints = healthPoints
        switch weaponType {
        case .dagger:
            weapon = Weapon(damage: 35, healing: 0)
        case .sword:
            weapon = Weapon(damage: 25, healing: 0)
        case .staff:
            weapon = Weapon(damage: 10, healing: 25)
        }
    }
    
    //     MARK: - Action
    class func attack(target: Character) {
//        target.healthPoints -= Character().weapon.damage
    }
    class func heal(target: Character) {
//        target.healthPoints += Character().weapon.damage
    }
}
enum WeaponType {
    case dagger, sword, staff
}


