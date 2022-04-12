//
//  File.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Character {
    
    // MARK: - Properties
    
    let name: String
    var healthPoints: Int
    let weapon: Weapon
    private let maxHealthPoints: Int
    
    // MARK: - Initializer
    
    init(name: String, healthPoints: Int, weaponType: WeaponType){
        self.name = name
        self.healthPoints = healthPoints
        self.maxHealthPoints = healthPoints
        switch weaponType {
        case .dagger:
            weapon = Weapon(damage: 50, healing: 0)
        case .sword:
            weapon = Weapon(damage: 30, healing: 0)
        case .staff:
            weapon = Weapon(damage: 15, healing: 20)
        }
    }
    
    // MARK: - Action
    
    private func attack(target: Character) {
        target.healthPoints -= weapon.damage
        resumeAction(target: target, action: "⚔️")
    }
    
    private func heal(target: Character) {
        target.healthPoints += weapon.healing
        if target.healthPoints > target.maxHealthPoints {
            target.healthPoints = target.maxHealthPoints
            print(K.Character.cantHeal)
        }
        resumeAction(target: target, action: "❤️‍🩹")
    }
    
    enum WeaponType {
        case dagger, sword, staff
    }
    
    /// If the character chosen can heal, the function display 2 action : Heal (❤️‍🩹) or Attack (⚔️)
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
    
    /// Function to check the function isCharacterHeal() and done according to the Boolean result.
    func healOrAttack(player: Player, opponent: Player) {
        weapon.healing > 0 ? (isCharacterHeal() == true ? characterAction(player: player, action: "❤️‍🩹"): characterAction(player: opponent, action: "⚔️")) : characterAction(player: opponent, action: "⚔️")
    }
    
    private func characterAction(player: Player, action: String) {
        print(K.Character.whatDo(action: action))
        player.description()
        let targetCharacter = player.chooseCharacter()
        if action == "⚔️" { attack(target: targetCharacter) }
        if action == "❤️‍🩹" { targetCharacter.healthPoints == maxHealthPoints ? print(K.Character.cantHeal) : heal(target: targetCharacter) }
    }
    
    // MARK: - Resume Action
    
    /// Display the action, with different print if the target character die.
    private func resumeAction(target: Character, action: String) {
        if target.healthPoints <= 0 {
            print(K.Character.targetIsDead(character: name, target: target.name, action: action))
        }
        else {
            print(K.Character.targetIsAlive(character: name, target: target.name, action: action, targetHP: target.healthPoints))
        }
    }
}
