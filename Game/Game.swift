//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

public class Game {
    //    Basic function to start a game.
    func startGame() {
        
    }
    
    //    To create 2 team (one by player, max 2) with 3 character choose.
    
    var firstPlayer = Player(playerName: "\(playerOneUsername ?? "Player 1")", teamPlayer: ["Brendan"])
    var secondPlayer = Player(playerName: "\(playerTwoUsername ?? "Player 2")", teamPlayer: ["Gustavo"])
    //  Choose 3 character among 3 character class available.
    
    
    //    Start the battle against player 1 & player 2
    
    func startBattle(){
        
    }
    
    //    Function to display winner and stop the game
    
    var deathTeamOne = 0
    var deathTeamTwo = 0
    
    func endGame() {
        if deathTeamOne == 3 || deathTeamTwo == 3 {
            
        }
    }
}


