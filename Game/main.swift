//
//  main.swift
//  Game
//
//  Created by Enzo Gammino on 14/03/2022.
//

import Foundation

// Use readLine() pour inviter le joueur a interragir avec le jeu !
// Optionnel important a utiliser
// static permet de séparer une variable d'une instance reporté a la class
// for value in ... if ... else -> ( value % 2 == 0 ? Pair : Impair) OÙ "?" = "if" et : = "else"
// value % 2 == 0 si value/2 donne un reste de division egal a 0, le bool est true, sinon false %: modulo

//print("Enter your username Player 1")
//if let playerOne = readLine() {
//    print("Welcome \(playerOne)\n")
//}
//print("Enter your username Player 2")
//if let playerTwo = readLine() {
//    print("Welcome \(playerTwo)\n")
//}


print("Enter your username Player 1")
func createPlayerOne() -> String? {
guard let playerOne = readLine()  else { return nil }
print("Welcome \(playerOne)\n")
    return playerOne
}
var playerOneUsername = createPlayerOne()

print("Enter your username Player 2")
func createPlayerTwo() -> String? {
guard let playerTwo = readLine()  else { return nil }
print("Welcome \(playerTwo)\n")
    return playerTwo
}
var playerTwoUsername = createPlayerTwo()

