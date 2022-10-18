//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var gameRounds = Rounds(rounds: [], playerScore: 0, cpuScore: 0)

    var body: some View {
        VStack {
            GameTitle()

            Cards(gameRounds: $gameRounds)

            GameScores(playerScore: $gameRounds.playerScore, cpuScore: $gameRounds.cpuScore)

            Divider()

            ScrollView {
                if !gameRounds.rounds.isEmpty {
                    ForEach(gameRounds.rounds.reversed(), id: \.self) { round in
                        RoundView(round: round)
                    }
                }
            }
            .padding(.vertical)

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

