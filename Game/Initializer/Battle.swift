//
//  Battle.swift
//  Game
//
//  Created by Enzo Gammino on 29/03/2022.
//

import Foundation

class Battle {
    init() {
        gameTurn()
    }
    
    func gameTurn() {
        displayTurn()
    }
    
    private func playerTurn() -> Int {
        let first = 0
        return first
    }
    
    private func characterChoice() -> Int {
        print("""
            \(game.players[playerTurn()].name), who character must play this turn ?
            1. \(game.players[playerTurn()].team[0].name), the \(game.players[playerTurn()].team[0].self)
            2. \(game.players[playerTurn()].team[1].name)
            3. \(game.players[playerTurn()].team[2].name)
            """)
        var character: Int = 0
        while character != 1, character != 2, character != 3 {
            if let input = readLine() {
                if let typed = Int(input){
                    character = typed
                }
            }
        }
        return character - 1
    }
    
    private  func characterAction() -> Int{
        let character = characterChoice()
        print("""
            What should \(game.players[playerTurn()].team[character].name) do ?
            1. Attack (-\(game.players[playerTurn()].team[character].weapon.damage) HP)
            2. Heal (+\(game.players[playerTurn()].team[character].weapon.healing) HP)
            """)
        var actionType: Int = 0
        while actionType != 1, actionType != 2 {
            if let input = readLine() {
                if let typed = Int(input){
                    actionType = typed
                }
            }
        }
        return actionType
    }
    
    private  func targetCharacter() -> Int { // FONCTION A FACTORISER + VOIR POUR AVOIR UNE CONDITION POUR LA PARTIE "HEAL" POUR BLOQUER CEUX QUI NE PEUVENT PAS SOIGNER
        if characterAction() == 1 {
            let targetPlayer = game.players[1]
            print("""
            Who do you want to attack?
            1. \(targetPlayer.team[0].name) HP: \(targetPlayer.team[0].healthPoints)
            2. \(targetPlayer.team[1].name) HP: \(targetPlayer.team[1].healthPoints)
            3. \(targetPlayer.team[2].name) HP: \(targetPlayer.team[2].healthPoints)
            """)
            var target: Int = 0
            while target != 1, target != 2, target != 3 {
                if let input = readLine() {
                    if let typed = Int(input){
                        target = typed
                    }
                }
            }
            return target - 1
        }
        else {
            let targetPlayer = game.players[0]
            print("""
            Who do you want to heal?
            1. \(targetPlayer.team[0].name) HP: \(targetPlayer.team[0].healthPoints)
            2. \(targetPlayer.team[1].name) HP: \(targetPlayer.team[1].healthPoints)
            3. \(targetPlayer.team[2].name) HP: \(targetPlayer.team[2].healthPoints)
            """)
            var target: Int = 0
            while target != 1, target != 2, target != 3 {
                if let input = readLine() {
                    if let typed = Int(input){
                        target = typed
                    }
                }
            }
            return target - 1
        }
    }
    
    func whoStart() -> Int {
        let first = Int.random(in: 0...1)
        print("\(game.players[first].name) engage the battle.")
        return first
    }
    
    private func displayTurn() {
//        let player = playerTurn()
//        let action = characterAction()
//        let characterChoice = characterChoice()
//        let target = targetCharacter()
        if action == 1 {
            Character.attack(who: game.players[player].team[characterChoice], target: game.players[1].team[target])
            
            print("\(game.players[player].team[characterChoice].name) attack \(game.players[1].team[target].name).\nHe have now \(game.players[1].team[target].healthPoints) HP.")
        }
        else {
            Character.heal(who: game.players[player].team[characterChoice], target: game.players[player].team[target])
            
            print("\(game.players[player].team[characterChoice].name) heal \(game.players[player].team[target].name).\nHe have now \(game.players[player].team[target].healthPoints) HP.")
            
        }
        
    }
}

