//
//  Battle.swift
//  Game
//
//  Created by Enzo Gammino on 29/03/2022.
//

import Foundation

class Battle {
    
    func playerTurn() {
        
    }
    
    func characterChoice() -> String {
        return "Something"
    }
    
    func characterAction() -> Int{
        print("""
            What should \(characterChoice()) do ?
            1. Attack
            2. Heal
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
    
    func targetCharacter(target: ) {
        if characterAction() = 1 {
        print("""
            Who do you want to attack?
            1. \(target.team[0].name) HP: \(target.team[0].healthPoints)
            2. \(target.team[1].name) HP: \(target.team[1].healthPoints)
            3. \(target.team[2].name) HP: \(target.team[2].healthPoints)
            """)
        var actionType: Int = 0
        while actionType != 1, actionType != 2, actionType != 3 {
            if let input = readLine() {
                if let typed = Int(input){
                    actionType = typed
                }
            }
        }
    }
        else {
        print("""
            Who do you want to heal?
            1. \(target.team[0].name) HP: \(target.team[0].healthPoints)
            2. \(target.team[1].name) HP: \(target.team[1].healthPoints)
            3. \(target.team[2].name) HP: \(target.team[2].healthPoints)
            """)
        var actionType: Int = 0
        while actionType != 1, actionType != 2, actionType != 3 {
            if let input = readLine() {
                if let typed = Int(input){
                    actionType = typed
                }
            }
        }
    }
    }
    
    func whoStart() -> Int {
        let first = Int.random(in: 0...1)
        print("\(Game().players[first].name) engage the battle.")
        return first
    }
}
