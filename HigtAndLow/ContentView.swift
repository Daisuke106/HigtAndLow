//
//  ContentView.swift
//  HigtAndLow
//
//  Created by ITユーザ on 2024/01/31.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var result = 0
    var body: some View {
        VStack {

        HStack {
            VStack {
                Spacer()
                Text("Computer")
                Spacer()
                Text("Diamonds13")
                    .frame(width: 100,
                           height: 150)
                    .border(Color.black)
                
                if result == 1 {
                    Text("Club13")
                    
                }

            }
            VStack {
                Spacer()
                Text("Player")
                Spacer()
                Text("High or Low?")
                    .frame(width: 100, height:150)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            }
        }
            Spacer()

            HStack {
                Spacer()
                Text("High")
                    .frame(width: 80, height: 60)
                    .background(Color.green)
                    .foregroundColor(.white)

                Text("Low")
                    .frame(width: 80, height: 60)
                    .background(Color.red)
                    .foregroundColor(.white)
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
