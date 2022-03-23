//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

public class Game {
    
    
    static var players: [Player] = []
    
    //MARK: - Start Game
    ///  Launch the game
    public func startGame(){
        Player.createPlayers()
//        dump(Game.players)
        startBattle()
        showStatistics()
    }
    
    //MARK: - Start Battle
    /// Function to initialize the battle
    public func startBattle(){
        whoStart()
        
    }
    

    //MARK: - Statistics
    /// Display the statistics of the fight after end battle.
    public func showStatistics() {
        
    }
    
}



