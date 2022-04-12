//
//  Weapon.swift
//  Game
//
//  Created by Enzo Gammino on 17/03/2022.
//

import Foundation

class Weapon {
    
    // MARK: - Properties
    
    let damage: Int
    let healing: Int
    
    // MARK: - Initializer
    
    init(damage: Int, healing: Int){
        self.damage = damage
        self.healing = healing
    }
}
