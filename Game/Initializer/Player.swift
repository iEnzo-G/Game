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
    static let numberOfCharacters = 3
    
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
                    1. Mage
                    2. Assassin
                    3. Warrior
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
    
    private func getUniqueName() -> String {
        var name: String = ""
        while name == "" {
            if let input = readLine() {
                name = input
            }
            if Player.characterNames.contains(name) {
                
            }
        }
        
        return name
    }
    
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
}

