//
//  RoundView.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 18/10/2022.
//

import SwiftUI

struct RoundView: View {
    let round: Round

    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Round \(round.id)")
                Spacer()
                Text(round.roundState.rawValue)
                    .foregroundColor(round.roundState.color)
            }
            .font(.title3.weight(.bold))

            HStack {
                Text("You: \(round.playerMove.rawValue)")

                Spacer()

                Text("CPU: \(round.cpuMove.rawValue)")
            }
        }
        .padding(.bottom)
    }
}

struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        RoundView(round: Round(id: 1, playerMove: .paper, cpuMove: .paper, roundState: .draw))
    }
}
