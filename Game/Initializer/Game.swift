//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

public class Game {
    
    //    Start the battle against player 1 & player 2
    public func startBattle(){
        
    }
    
    //    Function to display winner and stop the game
    
    var deathTeamOne: [String] = []
    var deathTeamTwo: [String] = []
    
    public func endGame(){
        if deathTeamOne.count == 3 || deathTeamTwo.count == 3 {
            exit(0)
        }
    }
}


