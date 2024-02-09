//
//  ContentView.swift
//  Work Card Game
//
//  Created by Arunabh on 01/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                 Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(String(playerCard))
                    Spacer()
                    Image(String(cpuCard))
                    Spacer()
                }
                Spacer()
                
                
                Button(action: {
                    deal()
                }, label: {
                     Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU ")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                   Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    func deal(){
        //randomize the player cards
        let  playerCardvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardvalue)
        //randomize the cpus card
        let cpuCardvalue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardvalue)
        //update the scores
        if playerCardvalue > cpuCardvalue{
            //add one to player score
            //playerScore = playerScore + 1
            playerScore += 1
        }
        else if cpuCardvalue > playerCardvalue {
            //add 1 to cpu
            cpuScore += 1
        }
    }
}
#Preview {
    ContentView()
}
