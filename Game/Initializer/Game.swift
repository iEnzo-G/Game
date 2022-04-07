//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Game {
    var numberOfTurn = 0
    static let numberOfPlayers = 2
    static var playersNames: [String] = []
    var players: [Player] = []
    
    //MARK: - Start Game
    ///  Launch the game
    func startGame(){
        createPlayers()
        summaryTeams()
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
    
    //MARK: - Battle phase
    /// Function to initialize the battle
    func playerTurn(attacker: Int,defender: Int){
        print("\(players[attacker].name), who character must play this turn ?")
        players[attacker].description()
        let attacker = players[attacker].chooseCharacter()
        print("Who do you want to attack?")
        players[defender].description()
        let defender = players[defender].chooseCharacter()
        attacker.attack(target: defender)
        print("\(attacker.name) attack \(defender.name).\n\(defender.name) have now \(defender.healthPoints) HP.\n")
    }
    
    
    //MARK: - Who start the battle
    /// To randomise the first player who start the battle
    func whoStart() -> Bool {
        let first = Int.random(in: 0 ..< Game.numberOfPlayers)
        print("\n\(players[first].name) engage the battle.")
        if first == 0 {
            return true
        }
        else {
            return false
        }
    }
    
    func startBattle() {
        var turn = whoStart()
        while players[0].isDead == false, players[1].isDead == false {
            
            if turn == true {
                numberOfTurn += 1
                playerTurn(attacker: 0, defender: 1)
                turn = false
            }
            else {
                numberOfTurn += 1
                playerTurn(attacker: 1, defender: 0)
                turn = true
            }
        }
    }
    
    //MARK: - Statistics
    /// Display the statistics of the fight after end battle.
    func showStatistics() {
        let winner: Player
        let loser: Player
        if players[0].isDead {
            winner = players[1]
            loser = players[0]
        }
        else {
            winner = players[0]
            loser = players[1]
        }
        print("We have a winner !\n Congrats to \(winner.name), and his team :")
        for character in 0 ..< Player.numberOfCharacters {
            print("     - \(winner.team[character].name)")
        }
        print("\nAgainst \(loser.name), and his team :")
        for character in 0 ..< Player.numberOfCharacters {
            print("     - \(loser.team[character].name)")
        }
            print("\nThe fight is over with a total of \(numberOfTurn) rounds elapsed.")
    }
    
    func summaryTeams() {
        for player in 0 ..< Game.numberOfPlayers {
            print("\n\(players[player].name) join the fight with his team:")
        for character in 0 ..< Player.numberOfCharacters {
            print("     \(character + 1). \(players[player].team[character].name) HP: \(players[player].team[character].healthPoints) DMG: \(players[player].team[character].weapon.damage)")
        }
        }
    }
}

