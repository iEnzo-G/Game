//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Game {
    
    static let numberOfPlayers = 2
    var players: [Player] = []
    //MARK: - Start Game
    ///  Launch the game
    func startGame(){
//        dump(Game.players)
        createPlayers()
        startBattle()
        showStatistics()
    }
    
    // MARK: - Create news players
    func createPlayers() {
        for i in 0 ..< Game.numberOfPlayers {
            print("Player, choose your username !")
            var name = ""
            while name == "" {
                if let input = readLine() {
                    name = input
                }
            }
            print("Player \(i + 1), choose your characters !")
            players.append(Player(name: name))
        }
    }
    
    //MARK: - Start Battle
    /// Function to initialize the battle
    func startBattle(){
        whoStart()
        
    }
    

    //MARK: - Statistics
    /// Display the statistics of the fight after end battle.
    func showStatistics() {
        
    }
    
    func whoStart() {
        let first = Int.random(in: 0...1)
        print("\(players[first].name) engage the battle.")
    }
    
}


