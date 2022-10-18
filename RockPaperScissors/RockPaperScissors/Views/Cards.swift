//
//  Cards.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 06/10/2022.
//

import SwiftUI

struct Cards: View {

    @Binding var gameRounds: Rounds

    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    var body: some View {
        HStack {
            CardDesign(hand: .rock) {
                buttonPressed(playerMove: .rock)
            }

            CardDesign(hand: .paper) {
                buttonPressed(playerMove: .paper)
            }

            CardDesign(hand: .scissors) {
                buttonPressed(playerMove: .scissors)
            }
        }
        .alert(alertTitle, isPresented: $showAlert) {
            Button("New Game") {
                resetGame()
            }
        } message: {
            Text(alertMessage)
        }

    }

    func buttonPressed(playerMove: Moves) {
        let moves: [Moves] = [.rock, .paper, .scissors]
        let cpuMove = moves.shuffled().first!
        let roundState = roundWinner(playerMove: playerMove, cpuMove: cpuMove)

        let newRound = Round(id: (gameRounds.rounds.count + 1), playerMove: playerMove, cpuMove: cpuMove, roundState: roundState)

        gameRounds.rounds.append(newRound)

        if gameRounds.rounds.count == 10 {
            if gameRounds.playerScore > gameRounds.cpuScore {
                alertTitle = "You Won!"
                alertMessage = "Congratulations your score (\(gameRounds.playerScore)) is higher than the CPU score (\(gameRounds.cpuScore))."
            } else if gameRounds.playerScore < gameRounds.cpuScore {
                alertTitle = "You Lost!"
                alertMessage = "Unfortunately your score (\(gameRounds.playerScore)) is lower than the CPU score (\(gameRounds.cpuScore))."
            } else {
                alertTitle = "Sudden Death!"
                alertMessage = "Hmmmmmm your score (\(gameRounds.playerScore)) and the CPU score (\(gameRounds.cpuScore)) are the same."
            }

            showAlert = true
        }
    }

    func roundWinner(playerMove: Moves, cpuMove: Moves) -> States {
        if playerMove == cpuMove {
            return .draw
        } else if (playerMove == .rock && cpuMove == .scissors) || (playerMove == .paper && cpuMove == .rock) || (playerMove == .scissors && cpuMove == .paper) {
            gameRounds.playerScore += 1
            return .win
        } else {
            gameRounds.cpuScore += 1
            return .lose
        }
    }

    func resetGame() {
        gameRounds.rounds = []
        gameRounds.playerScore = 0
        gameRounds.cpuScore = 0
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards(gameRounds: .constant(Rounds(rounds: [], playerScore: 0, cpuScore: 0)))
            .previewLayout(.sizeThatFits)
    }
}
