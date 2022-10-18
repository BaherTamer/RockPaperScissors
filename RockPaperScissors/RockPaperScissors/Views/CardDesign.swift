//
//  CardDesign.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 06/10/2022.
//

import SwiftUI

struct CardDesign: View {
    let hand: Moves

    var function: () -> Void

    var body: some View {
        Button {
            self.function()
        } label: {
            Text(hand.rawValue)
        }
        .font(.system(size: 60))
        .padding()
        .background(Color(uiColor: .systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct CardDesign_Previews: PreviewProvider {
    static var previews: some View {
        CardDesign(hand: .rock, function: {})
            .previewLayout(.sizeThatFits)
    }
}
