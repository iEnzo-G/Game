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
        dump(Game.players)
        startBattle()
        showStatistics()
    }
    
    //MARK: - Start Battle
    /// Function to initialize the battle
    public func startBattle(){
        
    }
    

    //MARK: - Statistics
    /// Display the statistics of the fight after end battle.
    public func showStatistics() {
        
    }
    
}

// Initialisation de l'équipe de \(Joueur 1):
// Chaque personnage : Choisi la classe avec readIntegrer() : 1,2 ou 3 (boucle while tant que nil)
// 1: Mage
// 2: Assassin
// 3: Warrior
// Comment voulez vous nommez votre personnage readLine() : "String" (boucle while tant que "")




