//
//  ContentView.swift
//  TicTacToe
//
//  Created by Mohammed on 3/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var gridView = [["      ","      ","      "],
                                   ["      ","      ","      "],
                                   ["      ","      ","      "]]
    @State private var whosTurn = "X" //display who turn is next
    @State private var X_score = 0  //holds X score
    @State private var O_score = 0   //holds O score
    @State private var draw_score = 0   //draw
    @State private var whoWon = ""   //hold the name of who won
    @State private var showResult = ""   //holds the string
    @State private var showingAlert = false  //to show alert set to false


    var body: some View {
            VStack{
                Text("Tic Tac Toe Game")   //heading
                    .background().padding()
                    
                Text("Turn")
                    .font(.title).bold()
                Text(whosTurn)
                    .font(.largeTitle).bold()
                    .padding()
                    .border(.blue)
               
                    
    
                Spacer()
                Text("            Scores           ")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                HStack{
                    Spacer()
                Text("X: \(X_score)")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                Spacer()
                Text("O: \(O_score)")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    Spacer()
                Text("Draw: \(draw_score)")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    Spacer()
                  
                }
                   
                Spacer()
                //grid view button
            VStack(spacing: 18){
                ForEach(0..<3){ i in
                    HStack(spacing:30){
                        ForEach(0..<3){ j in
                            Button(gridView[i][j]){
                            if(gridView[i][j] == "      "){
                                if(whosTurn == "X"){
                               gridView[i][j] = whosTurn
                                whosTurn = "O"
                                    checkifWin()
                                    isdraw()
                                }
                                else if (whosTurn == "O"){
                                    gridView[i][j] = whosTurn
                                     whosTurn = "X"
                                    checkifWin()
                                    isdraw()
                                    }
                                }
                            }
                            .buttonStyle(.bordered)
                            .controlSize(.large)
                            .font(.largeTitle)
                            .padding()
                                .alert(isPresented: $showingAlert){
                                        Alert(title: Text("Game Over"), message: Text(showResult), dismissButton: .default(Text("Ok")) )
                                }
                        
                }
                      
            }
                
        }
             
    }
                
            Spacer()
            Button("Reset game "){
                resetGame()
            }
            .buttonStyle(.borderedProminent)
        }
    }

    func isdraw(){
        var count = 0
        for i in 0...2{
            for j in 0...2{
                if(gridView[i][j] == "X" || gridView[i][j] == "O"){
                    count = count + 1
                    
                }
            }
        }
        if (count == 9){
            showingAlert = true
            showResult = "It's Draw"
            whoWon = " "
            resetGame()
            draw_score = draw_score + 1
        }
    }
    //validation of the result
    func checkifWin(){
        if(gridView[0][0] == "X" && gridView[0][1] == "X" && gridView[0][2] == "X"){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
           
    
        }
        else if (gridView[0][0] == "O" && gridView[0][1] == "O" && gridView[0][2] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
           
        else if(gridView[1][0] == "X" && gridView[1][1] == "X" && gridView[1][2] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if (gridView[1][0] == "O" && gridView[1][1] == "O" && gridView[1][2] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[2][0] == "X" && gridView[2][1] == "X" && gridView[2][2] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if (gridView[2][0] == "O" && gridView[2][1] == "O" && gridView[2][2] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][0] == "X" && gridView[1][0] == "X" && gridView[2][0] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if (gridView[0][0] == "O" && gridView[1][0] == "O" && gridView[2][0] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][1] == "X" && gridView[1][1] == "X" && gridView[2][1] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][1] == "O" && gridView[1][1] == "O" && gridView[2][1] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][2] == "X" && gridView[1][2] == "X" && gridView[2][2] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if (gridView[0][2] == "O" && gridView[1][2] == "O" && gridView[2][2] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][0] == "X" && gridView[1][1] == "X" && gridView[2][2] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if (gridView[0][0] == "O" && gridView[1][1] == "O" && gridView[2][2] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][2] == "X" && gridView[1][1] == "X" && gridView[2][0] == "X" ){
            showingAlert = true
            whoWon = "X"
            X_score = X_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        else if(gridView[0][2] == "O" && gridView[1][1] == "O" && gridView[2][0] == "O"){
            showingAlert = true
            whoWon = "O"
            O_score = O_score + 1
            resetGame()
            showResult = "\(whoWon) Won"
        }
        
       
    }
    func resetGame(){
        gridView = [["      ","      ","      "],
                    ["      ","      ","      "],
                    ["      ","      ","      "]]
        whosTurn = "X"
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
