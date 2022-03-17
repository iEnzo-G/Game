//
//  Weapon.swift
//  Game
//
//  Created by Enzo Gammino on 17/03/2022.
//

import Foundation

class Weapon {
    
    //    To define damage and healing according to type's weapon
    var damage: Int
    var healing: Int
    init(damage: Int, healing: Int){
        self.damage = damage
        self.healing = healing
    }
}

//class Sword: Weapon {
//    init(){
//        super.damage = -15
//    }
//}
//
//class Staff: Weapon {
//    init(){
//        super.damage = -10
//        super.healing = 25
//    }
//}
//
//class Dagger: Weapon {
//    init(){
//        super.damage = -35
//    }
//}

//class Weapon: Character {
//    var weaponCaract: [Int] = []
//    var damage: Int
//    var healing: Int
//        init(damage: Int, healing: Int){
//        self.damage = weaponCaract.insert(damage, at: 0)
//        self.healing = weaponCaract.insert(healing, at: 1)
//        }
//}
//
//class Sword: Weapon {
//
//}
//
//class Staff: Weapon {
//
//}
//
//class Dagger: Weapon {
//
//}
