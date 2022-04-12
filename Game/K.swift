//
//  K.swift
//  Game
//
//  Created by Enzo Gammino on 12/04/2022.
//

import Foundation

struct K {
    
    struct Game {
        static func summaryTeams(playerName: String) -> String { "\n\(playerName) join the fight \(K.Player.displayTeam)" }
        static func whoCharacterPlay(playerName: String) -> String { "\(playerName), who character must play this turn ?" }
        static func whoStart(playerName: String) -> String { "\n\(playerName) engage the battle." }
        static let nameUnique = "This name is already taken. \(K.Game.chooseAnother)"
        static func playerUsername(index: Int) -> String { "Player \(index + 1), choose your username !" }
        static func chooseCharacters(playerName: String) -> String { "\(playerName), choose your characters !" }
        static let chooseAnother = "Choose another please !"
        
        struct Statistics {
            static func displayWinner(name: String) -> String { "\nWe have a winner 🏆 !\nCongrats to \(name) \(K.Player.displayTeam)" }
            static func displayLoser(name: String) -> String { "\nAgainst \(name) \(K.Player.displayTeam)" }
            static func roundsElapsed(numbers: Int) -> String { "\nThe fight is over with a total of \(numbers) rounds elapsed." }
        }
    }
    
    struct Player {
        static let listedClass = """
                    Choose your class :
                    1. Mage 🧙‍♂️
                    2. Assassin 🥷
                    3. Warrior 🧝‍♂️
                """
        static func namePlease(class: String) -> String { "Please, named your \(`class`):" }
        static let displayTeam = "with this team:"
        
    }
    
    struct Character {
        
        struct Description {
            static func dead(index : Int, name: String) -> String { "     \(index + 1). \(name) \(K.Character.isDead)" }
            static func canHeal(index: Int, name: String, healthPoints: Int, damage: Int, healing: Int) -> String { "   \(index + 1). \(name)    ❤️: \(healthPoints) 🗡: \(damage) ❤️‍🩹: \(healing)" }
            static func onlyAttack(index: Int, name: String, healthPoints: Int, damage: Int) -> String { "   \(index + 1). \(name)    ❤️: \(healthPoints) 🗡: \(damage)" }
        }
        
        static let isDead = "is ☠️."
        static func alreadyDead(characterName: String) -> String { "\(characterName) \(K.Character.isDead) \(K.Game.chooseAnother)" }
        static let cantHeal = "Can't ❤️‍🩹 more than its initial ❤️ !"
        static func whatDo(action: String) -> String { "Who do you want to \(action)?" }
        static func targetIsDead(character: String, target: String, action: String) -> String { "\(character) \(action) \(target)\n\(target) \(K.Character.isDead)" }
        static func targetIsAlive(character: String, target: String, action: String, targetHP: Int) -> String { "\(character) \(action) \(target).\n\(target) have now \(targetHP) ❤️.\n" }
    }
}

