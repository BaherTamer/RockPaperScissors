//
//  GameScores.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 18/10/2022.
//

import SwiftUI

struct GameScores: View {
    @Binding var playerScore: Int
    @Binding var cpuScore: Int

    var body: some View {
        HStack {
            Text("You: \(playerScore)")
            Spacer()
            Text("CPU: \(cpuScore)")
        }
        .font(.title3.weight(.bold))
        .padding(.vertical)
    }
}

struct GameScores_Previews: PreviewProvider {
    static var previews: some View {
        GameScores(playerScore: .constant(0), cpuScore: .constant(0))
    }
}
