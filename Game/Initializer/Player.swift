//
//  Player.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

public class Player: Game {
    
    ///   To better indentify the player's turn
    let name: String
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
            var nameUsed: [String] = []
            var name: String = ""
            while name == ""{
                if let input = readLine() {
                    name = input
                }
            }

            let newPlayer = Player(name: name, team: [])
            Game.players.append(newPlayer)
            
            // MARK: - Team creation
            print("Create your team :")
            while newPlayer.team.count < 3 {
                print("""
                        Choose your class :
                        1. Mage
                        2. Assassin
                        3. Warrior
                    """)
                var characterClass: Int = 0
                if let input = readLine() {
                    if let typed = Int(input){
                        characterClass = typed
                    }
                }
                
                switch characterClass {
                    //MARK: - Mage
                case 1:
                    print("Please, named your Mage:")
                    var name: String = ""
                    while name == "" {
                        if let input = readLine() {
                            name = input
                        }
                        let new = Mage(name: name)
                        newPlayer.team.append(new)
                    }
                    // MARK: - Assasin
                case 2:
                    print("Please, named your Assasin:")
                    var name: String = ""
                    while name == "" {
                        if let input = readLine() {
                            name = input
                        }
                        let new = Assasin(name: name)
                        newPlayer.team.append(new)
                    }
                    // MARK: - Warrior
                case 3:
                    print("Please, named your Warrior:")
                    var name: String = ""
                    while name == "" && !nameUsed.contains(name){
                        if let input = readLine() {
                            name = input
                        }
                        let new = Warrior(name: name)
                        newPlayer.team.append(new)
                    }
                default:
                    print("Class doesn't exist, retry :")
                }
                
            }
            players += 1
        }
    }
}

