//
//  Player.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

public class Player {
    
    //   To better indentify the player's turn
    var playerName: String
    //    Using array about character to make easier to identify who die or still alive.
    //    Help program to know where we are in the game (if it's finish, remaining character, etc..)
    var teamPlayer: [String] = []
    
    init(playerName: String, teamPlayer: [String]){
        self.playerName = playerName
        self.teamPlayer = teamPlayer
    }
}


public class Team: Player {
    var teamOne: [String] = []
    var teamTwo: [String] = []
    
    func createPlayerOneTeam() {
        while teamOne.count != 3 {
            func newCharacter() -> String {
            guard let characterName = readLine() else { return newCharacter()}
            return characterName
            }
            teamOne.append(newCharacter())
        }
        
    }
}
