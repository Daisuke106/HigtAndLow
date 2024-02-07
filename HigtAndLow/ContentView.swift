//
//  ContentView.swift
//  HigtAndLow
//
//  Created by ITユーザ on 2024/01/31.
//

import SwiftUI
import UIKit
import Foundation


struct ContentView: View {
    func high(){
        if randomInt < playerInt {
            winer = "Playerの勝ち"
        } else {
            winer = "Playerの負け"
        }
    }
    func low(){
        if randomInt > playerInt {
            winer = "Playerの勝ち"
        } else {
            winer = "Playerの負け"
        }
    }
//    @State var counter = 0
//    @Binding var Computer_Numbers: Bool
    let Teams = ["Diamonds", "Clubs", "Tigers", "Jets"]
//    let randomInt = Int.random(in: 0..<12)
    @State var randomInt = Int.random(in: 1...13)
    @State var playerInt = Int.random(in: 1...13)
    @State var result = 0
    @State var isGame = false
    @State var winer = ""
    var body: some View {
//        counter = [1,2,3,4,5,6,7,8,9,10,11,12]
//        Computer_Numbers = ["Diamonds", "Spade", "Clubs"]
        
        
        VStack {

        HStack {
            VStack {
                Spacer()
                Text("Computer")
                Spacer()

                
            if let random_Teams = Teams.randomElement() {
                    Text(random_Teams)
                        .frame(width: 100,
                               height: 150)
                        .border(Color.black)
                    Text("\(randomInt)")

                
                if result == 1 {
                    Text("Club13")
                    
                }
            }

            }
            VStack {
                Spacer()
                Text("Player")
                    .frame(width: 100, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                if isGame {
                    Text("\(playerInt)")
                        .frame(width: 100, height:150)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                } else {
                    Text("High or Low?")
                        .frame(width: 100, height:150)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                }

            }

        }
            HStack {
                Text(winer)
            }
            Spacer()

            HStack {
                Spacer()
                Button(action: {
                    isGame = true
                    high()
                }){
                    Text("High")
                        .frame(width: 80, height: 60)
                        .background(Color.green)
                        .foregroundColor(.white)
                }

                Button(action: {
                    isGame = true
                    low()
                }){
                    Text("Low")
                        .frame(width: 80, height: 60)
                        .background(Color.red)
                        
                        .foregroundColor(.white)
                }
                Spacer()
            }
            Spacer()
            Button(action: {
                
            }){
                Text("やり直す")
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
