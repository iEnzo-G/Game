//
//  main.swift
//  Game
//
//  Created by Enzo Gammino on 14/03/2022.
//

import Foundation

// Use readLine() pour inviter joueur a interragir avec le jeu !
// Optionnel important a utiliser
// static permet de séparer une variable d'une instance reporté a la class
// for value in ... if ... else -> ( value % 2 == 0 ? Pair : Impair) OÙ "?" = "if" et : = "else"
// value % 2 == 0 si value/2 donne un reste de division egal a 0, le bool est true, sinon false %: modulo

//let str = readLine() ?? ""
//print(str)   ici le ?? "" ajoute une default value à readline() qui permet d'enlever la réponse = Optional("\(str)")


let playerOne = readLine() ?? ""
print("Player 1, your username is \(playerOne)")

let playerTwo = readLine() ?? ""
print("Player 2, your username is \(playerTwo)")
