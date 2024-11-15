//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Mia Anderson on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
                .font(.title).bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3), content: {
                ForEach(0..<9) { index in
                    ZStack {
                        Color.purple
                        Color.white
                            .opacity(0.4)
                            .opacity(moves[index] == "" ? 1 : 0)
                        Text(moves[index])
                            .font(.system(size: 60))
                            .fontWeight(.heavy)
                            }
                            .frame(width: 120, height: 120, alignment: .center)
                            .cornerRadius(30)
                            .onTapGesture {
                                withAnimation(.default) {
                                    if moves[index] == "" {
                                        moves[index] = xTurn ? "X" : "O"
                                        xTurn.toggle()
                                    }
                                }
                            }
                            .rotation3DEffect(
                                .degrees(moves[index] == "" ? 180 : 0),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                                )
                }
            })
        }
        .preferredColorScheme(.dark)
    }
    @State private var moves = Array(repeating: "", count: 9)
    @State private var xTurn = true
}

#Preview {
    ContentView()
}
