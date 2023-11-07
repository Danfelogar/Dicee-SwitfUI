//
//  ContentView.swift
//  Dicee-SwitfUI
//
//  Created by Daniel Felipe on 27/09/23.
//

import SwiftUI

struct ContentView: View {
    //@State for set property, is declarative
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(numDice: leftDiceNumber)
                    DiceView(numDice: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }.padding()
        }
    }
}

struct DiceView: View {
    let numDice: Int
    var body: some View {
        Image("dice\(numDice)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

