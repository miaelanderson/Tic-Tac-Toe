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
                        Text("X")
                            .font(.system(size: 60))
                            .fontWeight(.heavy)
                            }
                            .frame(width: 120, height: 120, alignment: .center)
                            .cornerRadius(30)
                }
            })
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
