//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Game {
    
    static let numberOfPlayers = 2
    static var playersNames: [String] = []
    var players: [Player] = []
    //MARK: - Start Game
    ///  Launch the game
    func startGame(){
        createPlayers()
        startBattle()
        showStatistics()
    }
    
    // MARK: - Create news players
    func createPlayers() {
        for i in 0 ..< Game.numberOfPlayers {
            print("Player \(i + 1), choose your username !")
            var name = ""
            while name == "" {
                if let input = readLine() {
                    name = input
                }
                if Game.playersNames.contains(name) {             // Safe condition to have unique name
                    print("This username is already taken, choose another please !")
                    name = ""
                }
            }
            Game.playersNames.append(name)
            print("\(name), choose your characters !")
            players.append(Player(name: name))
        }
    }
    
    //MARK: - Start Battle
    /// Function to initialize the battle
    func startBattle(){
        Battle().whoStart()
        Battle().gameTurn()
    }
    

    //MARK: - Statistics
    /// Display the statistics of the fight after end battle.
    func showStatistics() {
        
    }

    
}


