//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Game {
    //    Basic function to start a game.
    func startGame() {
        
    }
    
    //    To create 2 team (one by player, max 2) with 3 character choose.
    var player1 = Player(playerName: "\(playerOne)", teamPlayer: ["Brendan"])
    var player2 = Player(playerName: "\(playerTwo)", teamPlayer: ["Gustavo"])
    var players = [player1, player2]
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



func wait() {
    
}
