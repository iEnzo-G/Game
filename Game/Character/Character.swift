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
    let weapon: Weapon
    let maxHealthPoints: Int
    
    //     MARK: - Initializer
    ///     Main init with name, their HP, action possible and their weapon
    ///     who define "HP transformer", if character heal(+) or attack(-)
    init(name: String, healthPoints: Int, weaponType: WeaponType){
        self.name = name
        self.healthPoints = healthPoints
        self.maxHealthPoints = healthPoints
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
    private func attack(target: Character) {
        target.healthPoints -= weapon.damage
        resumeAction(target: target, action: "⚔️")
    }
    private func heal(target: Character) {
        target.healthPoints += weapon.healing
            if target.healthPoints > target.maxHealthPoints {
            target.healthPoints = target.maxHealthPoints
            cantHealMore()
        }
        resumeAction(target: target, action: "❤️‍🩹")
    }
    
    enum WeaponType {
        case dagger, sword, staff
    }
    
    private func isCharacterHeal() -> Bool {
        let action = ["🗡","❤️‍🩹"]
        print("Do you want ❤️‍🩹 or 🗡 ?")
        for (index, action) in action.enumerated() {
            print("\(index + 1). \(action) ")
        }
        var actionIndex: Int = 0
        while actionIndex != 1, actionIndex != 2 {
            if let input = readLine() {
                if let typed = Int(input) {
                    actionIndex = typed
                }
            }
        }
        return actionIndex == 1 ? false : true
    }
    
    func actionCharacter(player: Player, defender: Player) {
        weapon.healing > 0 ? (isCharacterHeal() == true ? healCharacter(self: player): attackCharacter(defender: defender)) : attackCharacter(defender: defender)
   }
        
        // DEUX FONCTIONS COMBINÉES EN UNE SEULE POSSIBLE (À FACTO)
    private func attackCharacter(defender: Player) {
        whatDo(action: "⚔️")
        defender.description()
        let targetCharacter = defender.chooseCharacter()
        attack(target: targetCharacter)
    }
    
    private func healCharacter(self: Player) {
        whatDo(action: "❤️‍🩹")
        self.description()
        let targetCharacter = self.chooseCharacter()
        if targetCharacter.healthPoints == maxHealthPoints {
            cantHealMore()
            /* RETOUR A LA FONCTION actionCharacter */
        }
        else { heal(target: targetCharacter) }
    }
        
        
    
    //MARK: - STRING
    private func resumeAction(target: Character, action: String) { // Fonction qui sera dans la partie constante avec tous les Strings.
        target.healthPoints <= 0 ? print("\(name) \(action) \(target.name) and she/he is ☠️") : print("\(name) \(action) \(target.name).\n\(target.name) have now \(target.healthPoints) ❤️.\n")
    }
    
    private func cantHealMore() { // Fonction qui sera dans la partie constante avec tous les Strings.
        print("Can't ❤️‍🩹 more than its initial ❤️ !")
    }
    
    private func whatDo(action: String) {
        print("Who do you want to \(action)?")
    }
}
