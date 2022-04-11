//
//  Player.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Player {
    
    ///   To better indentify the player's turn
    let name: String
    ///    Using array about character to make easier to identify who die or still alive.
    ///    Help program to know where we are in the game (if it's finish, remaining character, etc..)
    var team: [Character] = []
    static var characterNames: [String] = []
    static let numberOfCharacters = 2
    var isDead: Bool {
        let characterIsAlive = team.filter { $0.healthPoints > 0 }
        return characterIsAlive.isEmpty
    }
    
    init(name: String){
        self.name = name
        createCharacters()
    }
    
    //MARK: - Create Player/Team
    /// Init all players with her/him team
    private func createCharacters() {
        for _ in 0 ..< Player.numberOfCharacters {
            print("""
                    Choose your class :
                    1. Mage 🧙‍♂️
                    2. Assassin 🥷
                    3. Warrior 🧝‍♂️
                """)
            switch getClassType() {
            case 1:
                print("Please, named your Mage:")
                team.append(Mage(name: getUniqueName()))
            case 2:
                print("Please, named your Assasin:")
                team.append(Assasin(name: getUniqueName()))
            case 3:
                print("Please, named your Warrior:")
                team.append(Warrior(name: getUniqueName()))
            default:
                print("Class doesn't exist, retry :")
                break
            }
        }
    }
    
    //MARK: - Character's name
    /// This function allows to give a name to the choosen character with a safe condition to give an unique name
    private func getUniqueName() -> String {
        var name: String = ""
        while name == "" {
            if let input = readLine() {
                name = input
            }
            if Player.characterNames.contains(name) {            // Safe condition to have unique name
                print("Characters can't have the same name, choose another please !")
                name = ""
            }
        }
        Player.characterNames.append(name)
        return name
    }
    
    //MARK: - Class Selector
    /// This function is to choose the class you want create before give him unique name
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
    
    //MARK: - Team Description
    func description() { // AVEC LA CONSTANTE STRING -> FACTO LA FUNCTION
        for (index, character) in team.enumerated() {
            if character.healthPoints <= 0 {
                print("     \(index + 1). \(character.name) is ☠️")
            }
            else {
                if character.weapon.healing > 0 {
                    print("     \(index + 1). \(character.name)         ❤️: \(character.healthPoints) 🗡: \(character.weapon.damage) ❤️‍🩹: \(character.weapon.healing)")
                }
                else {
                    print("     \(index + 1). \(character.name)         ❤️: \(character.healthPoints) 🗡: \(character.weapon.damage)")
                }
            }
        }
    }
    
    //MARK: - Choose Character
    func chooseCharacter() -> Character {
        var characterIndex: Int = 0
        while characterIndex != 1, characterIndex != 2, characterIndex != 3 {
            if let input = readLine() {
                if let typed = Int(input){
                    characterIndex = typed
                }
            }
            if characterIndex > 0, characterIndex < 4, team[characterIndex - 1].healthPoints <= 0 {
                print("\(team[characterIndex - 1].name) is ☠️, choose another character !")
                characterIndex = 0
            }
        }
        let selectedCharacter = team[characterIndex - 1]
        return selectedCharacter
    }
    
}
