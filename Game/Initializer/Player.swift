//
//  Player.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Player {
    
    // MARK: - Properties
    

    let name: String
    var team: [Character] = []
    private static var characterNames: [String] = []
    private static let numberOfCharacters = 3
    var isDead: Bool {
        let characterIsAlive = team.filter { $0.healthPoints > 0 }
        return characterIsAlive.isEmpty
    }
    init(name: String){
        self.name = name
        createCharacters()
    }
    
    // MARK: - Create Player/Team
    
    /// Init all players with her/him team
    private func createCharacters() {
        for _ in 0 ..< Player.numberOfCharacters {
            print(K.Player.listedClass)
            switch getClassType() {
            case 1:
                print(K.Player.namePlease(class: "Mage"))
                team.append(Mage(name: getUniqueName()))
            case 2:
                print(K.Player.namePlease(class: "Assasin"))
                team.append(Assasin(name: getUniqueName()))
            case 3:
                print(K.Player.namePlease(class: "Warrior"))
                team.append(Warrior(name: getUniqueName()))
            default:
                break
            }
        }
    }
    
    // MARK: - Character's name
    
    /// Allows to give a name to the choosen character with a safe condition to give an unique name
    private func getUniqueName() -> String {
        var name: String = ""
        while name == "" {
            if let input = readLine() {
                name = input
            }
            if Player.characterNames.contains(name) {
                print(K.Game.nameUnique)
                name = ""
            }
        }
        Player.characterNames.append(name)
        return name
    }
    
    // MARK: - Class Selector
    
    /// To choose the class you want create before give him unique name
    private func getClassType() -> Int {
        var characterClass: Int = 0
        while characterClass != 1, characterClass != 2, characterClass != 3 {
            if let input = readLine() {
                if let typed = Int(input){
                    characterClass = typed
                }
            }
        }
        return characterClass
    }
    
    // MARK: - Team Description
    
    /// Display all character in player's team
    func description() {
        for (index, character) in team.enumerated() {
            if character.healthPoints <= 0 {
                print(K.Character.Description.dead(index: index, name: character.name))
            }
            else {
                if character.weapon.healing > 0 {
                    print(K.Character.Description.canHeal(index: index, name: character.name, healthPoints: character.healthPoints, damage: character.weapon.damage, healing: character.weapon.healing))
                }
                else {
                    print(K.Character.Description.onlyAttack(index: index, name: character.name, healthPoints: character.healthPoints, damage: character.weapon.damage))
                }
            }
        }
    }
    
    // MARK: - Choose Character
    
    /// Used for the battle phase
    func chooseCharacter() -> Character {
        var characterIndex: Int = 0
        while characterIndex != 1, characterIndex != 2, characterIndex != 3 {
            if let input = readLine() {
                if let typed = Int(input){
                    characterIndex = typed
                }
            }
            if characterIndex > 0, characterIndex < 4, team[characterIndex - 1].healthPoints <= 0 {
                print(K.Character.alreadyDead(characterName: team[characterIndex - 1].name))
                characterIndex = 0
            }
        }
        let selectedCharacter = team[characterIndex - 1]
        return selectedCharacter
    }
}
