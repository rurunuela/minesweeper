//
//  Game.swift
//  minesweeper
//
//  Created by Richard Urunuela on 25/10/2020.
//

import Foundation
import Combine
class Game: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()

    var board  = Array(repeating: Array(repeating: "?", count: 16), count: 30)

    init(){
        
    }
    
    
    func reveal(ligne:Int , colonne : Int){
        
        self.board[ligne][colonne] = "1"
        print(self.board)
        objectWillChange.send()
    }
    
    
    
}
