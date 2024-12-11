//
//  ContentView.swift
//  CardGame
//
//  Created by Jajwol Bajracharya on 11/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCardNumber: Int = 2
    @State var CPUCardNumber: Int = 3
    
    @State var playerScore: Int = 0
    @State var CPUScore: Int = 0
    
    var body: some View {
        ZStack {
            Image("background-plain").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            VStack(spacing: 48.0){
                Image("logo")
                HStack(spacing: 48.0){
                    Image("card\(playerCardNumber)")
                    Image("card\(CPUCardNumber)")
                }
                
                Button{deal()}label:{Image("button")}
                
                HStack(alignment: .center, spacing: 64.0){
                    VStack(spacing: 16.0){
                        Text("Player")
                            .font(.body)
                            .fontWeight(.semibold)
                        Text(String(playerScore)).font(.largeTitle)
                    }.foregroundColor(Color.white)
                    VStack(spacing: 16.0){
                        Text("CPU")
                            .font(.body)
                            .fontWeight(.semibold)
                        Text(String(CPUScore)).font(.largeTitle)
                    }.foregroundColor(Color.white)
                }
            }.padding(48)
        }
    }
    
    func deal() {
        playerCardNumber = Int.random(in: 2...14)
        CPUCardNumber = Int.random(in: 2...14)
        
        if playerCardNumber == CPUCardNumber {
            return
        }
        
        playerCardNumber > CPUCardNumber ? (playerScore += 1) : (CPUScore += 1)
        
    }
}

#Preview {
    ContentView()
}
