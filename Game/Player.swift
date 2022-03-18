//
//  Player.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation


// DISCORD KELTOUM: " class Player  { var name : String, var characters: [character] }
//                      player1 = Player(name: Ken, personnages: [personnage])
//                      player2 = Player(name: Stue, personnages: [personnage])
//                      var players = [player1, player2]                                    "

public class Player {
    
    //   To better indentify the player's turn
    var playerName: String
    //    Using array about character to make easier to identify who die or still alive.
    //    Help program to know where we are in the game (if it's finish, remaining character, etc..)
    var teamPlayer: [String]
    
    init(playerName: String, teamPlayer: [String]){
        self.playerName = playerName
        self.teamPlayer = teamPlayer
    }
}


