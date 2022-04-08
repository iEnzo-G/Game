//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Game {
    private var numberOfTurn = 0
    static let numberOfPlayers = 2
    static var playersNames: [String] = []
    var players: [Player] = []
    
    //MARK: - Start Game
    ///  Launch the game
    func startGame(){
        createPlayers()
        summaryTeams()
        whoPlayThisRound()
        resultFight()
    }
    
    // MARK: - Create news players
    private func createPlayers() {
        for index in 0 ..< Game.numberOfPlayers {
            print("Player \(index + 1), choose your username !")
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
    private func playerRound(playerIndex: Int, defenderIndex: Int) {
        print("\(players[playerIndex].name), who character must play this turn ?")
        players[playerIndex].description()
        let chosenCharacter = players[playerIndex].chooseCharacter()
        chosenCharacter.actionCharacter(player: players[playerIndex], defender: players[defenderIndex])
    }
    
    //MARK: - Who start the battle
    /// To randomise the first player who start the battle
    private func isPlayerOneStarted() -> Bool {
        let first = Int.random(in: 0 ..< Game.numberOfPlayers)
        print("\n\(players[first].name) engage the battle.")
        return first == 0 ? true : false
    }
    
    //    MARK: - Round by Round
    private func whoPlayThisRound() {
        var isPlayerOneRound = isPlayerOneStarted()
        while players[0].isDead == false, players[1].isDead == false {
            isPlayerOneRound ? playerRound(playerIndex: 0, defenderIndex: 1) : playerRound(playerIndex: 1, defenderIndex: 0)
            isPlayerOneRound.toggle()
            numberOfTurn += 1
        }
    }
    
    //MARK: - Statistics
    private func resultFight() {
        players[0].isDead ? showStatistics(winner: players[1], loser: players[0]) : showStatistics(winner: players[0], loser: players[1])
    }
    /// Display the statistics of the fight after end battle.
    private func showStatistics(winner: Player, loser: Player) {
        print("\nWe have a winner 🏆 !\nCongrats to \(winner.name), and his team :")
        winner.description()
        print("\nAgainst \(loser.name), and his team :")
        loser.description()
        print("\nThe fight is over with a total of \(numberOfTurn) rounds elapsed.")
    }
    
    //MARK: - Summary before fight
    private func summaryTeams() {
        for player in 0 ..< Game.numberOfPlayers {
            print("\n\(players[player].name) join the fight with his team:")
            players[player].description()
        }
    }

}

