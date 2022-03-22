//
//  Player.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

public class Player: Game {
    
    ///   To better indentify the player's turn
    var name: String
    ///    Using array about character to make easier to identify who die or still alive.
    ///    Help program to know where we are in the game (if it's finish, remaining character, etc..)
    var team: [Character] = []
    
    init(name: String, team: [Character]){
        self.name = name
        self.team = team
    }
    
    //MARK: - Create Player/Team
    /// Init all players with her/him team
    class func createPlayers() {
        var players = 0
        while players != 2 { // Set the numbers of players for the party
            print("Player \(players  + 1), choose your username:")
            var name: String = ""
            while name == ""{
                if let input = readLine() {
                    name = input
                }
            }
            let newPlayer = Player(name: name, team: [])
            Game.players.append(newPlayer)
            
            print("Create your team :")
            while newPlayer.team.count < 3 {
                print("""
                        Choose your class :
                        1. Mage
                        2. Assassin
                        3. Warrior
                    """)
                var characterClass: Int = 0
                if characterClass == 0 {
                    while characterClass != 1 || (2 != 0) || (3 != 0) {
                    if let input = readLine() {
                        if let typed = Int(input){
                            characterClass = typed
                       }
                    }
                    }
                }
                
                //MARK: - Mage
                if characterClass == 1 {
                    print("Please, named your Mage:")
                    var nameM: String = ""
                    while nameM == ""{
                        if let input = readLine() {
                            nameM = input
                        }
                        let first = Mage(name: nameM)
                        newPlayer.team.append(first)
                    }
                }
                
                // MARK: - Assasin
                if characterClass == 2 {
                    print("Please, named your Assasin:")
                    var nameA: String = ""
                    while nameA == ""{
                        if let input = readLine() {
                            nameA = input
                        }
                        let second = Assasin(name: nameA)
                        newPlayer.team.append(second)
                    }
                }
                
                // MARK: - Warrior
                if characterClass == 3 {
                    print("Please, named your Warrior:")
                    var nameW: String = ""
                    while nameW == ""{
                        if let input = readLine() {
                            nameW = input
                        }
                        let third = Warrior(name: nameW)
                        newPlayer.team.append(third)
                    }
                }
            }
            players += 1
        }
        
    }
}
