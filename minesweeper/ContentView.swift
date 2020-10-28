//
//  ContentView.swift
//  minesweeper
//
//  Created by Richard Urunuela on 25/10/2020.
//

import SwiftUI

struct Case:View {
    @EnvironmentObject  var game:Game
    var ligne:Int
    var colonne:Int
    func getImageName() -> String {
        var value = game.board[ligne][colonne]
        if value == "?" {return "0Reveal"}
        
        return "NotReveal"
    }
    
    var body: some View {
        ZStack(){
            Image(game.board[ligne][colonne] == "0" ? "NotReveal" : "0Reveal" ).onTapGesture(count: 1, perform: {
                print("\(ligne) \(colonne)")
                game.reveal(ligne: ligne, colonne: colonne)
                
            })
            //Text("?")
        }
    }
}

struct Board :View {
    @EnvironmentObject var game:Game
    var body: some View {
        ScrollView(){
        VStack(){
            ForEach(0...29,id: \.self)  { ligne in
            //
        HStack(){
            ForEach((0...15), id: \.self) { colonne in
                  // Text("\($0)…")
                Case( ligne: ligne,colonne: colonne).padding(-4)
               }
        
            
        }
            }
        }
        }
    }
    
    
    
}


struct ContentView: View {
    var body: some View {
        Board()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
