//
//  Game.swift
//  Game
//
//  Created by Enzo Gammino on 15/03/2022.
//

import Foundation

class Game {
    
    // MARK: - Properties
    
    private var numberOfTurn = 0
    private static let numberOfPlayers = 2
    private static var playersNames: [String] = []
    private var players: [Player] = []
    
    // MARK: - Start Game
    
    ///  Launch the game.
    func startGame(){
        createPlayers()
        summaryTeams()
        whoPlayThisRound()
        resultFight()
    }
    
    // MARK: - Create news players
    
    /// Function to create players and them team.
    private func createPlayers() {
        for index in 0 ..< Game.numberOfPlayers {
            print(K.Game.playerUsername(index: index))
            var name = ""
            while name == "" {
                if let input = readLine() {
                    name = input
                }
                if Game.playersNames.contains(name) {
                    print(K.Game.nameUnique)
                    name = ""
                }
            }
            Game.playersNames.append(name)
            print(K.Game.chooseCharacters(playerName: name))
            players.append(Player(name: name))
        }
    }
    
    // MARK: - Battle phase
    
    /// Function to initialize the battle.
    private func playerRound(playerIndex: Int, opponentIndex: Int) {
        print(K.Game.whoCharacterPlay(playerName: players[playerIndex].name))
        players[playerIndex].description()
        let chosenCharacter = players[playerIndex].chooseCharacter()
        chosenCharacter.healOrAttack(player: players[playerIndex], opponent: players[opponentIndex])
    }
    
    // MARK: - Who start the battle
    
    /// To randomise the first player who start the battle.
    private func isPlayerOneStarted() -> Bool {
        let first = Int.random(in: 0 ..< Game.numberOfPlayers)
        print(K.Game.whoStart(playerName: players[first].name))
        return first == 0 ? true : false
    }
    
    // MARK: - Round by Round
    
    /// Randomizer function to know which player engage the battle.
    private func whoPlayThisRound() {
        var isPlayerOneRound = isPlayerOneStarted()
        while players[0].isDead == false, players[1].isDead == false {
            isPlayerOneRound ? playerRound(playerIndex: 0, opponentIndex: 1) : playerRound(playerIndex: 1, opponentIndex: 0)
            isPlayerOneRound.toggle()
            numberOfTurn += 1
        }
    }
    
    // MARK: - Statistics
    
    /// To defined the winner and the loser to display them.
    private func resultFight() {
        players[0].isDead ? showStatistics(winner: players[1], loser: players[0]) : showStatistics(winner: players[0], loser: players[1])
    }
    
    /// Display the statistics of the fight after end battle.
    private func showStatistics(winner: Player, loser: Player) {
        print(K.Game.Statistics.displayWinner(name: winner.name))
        winner.description()
        print(K.Game.Statistics.displayLoser(name: loser.name))
        loser.description()
        print(K.Game.Statistics.roundsElapsed(numbers: numberOfTurn))
    }
    
    // MARK: - Summary before fight
    
    ///  Summary of players teams with characters shown.
    private func summaryTeams() {
        for player in 0 ..< Game.numberOfPlayers {
            print(K.Game.summaryTeams(playerName: players[player].name))
            players[player].description()
        }
    }

}

