//
//  ContentView.swift
//  RandomNumber
//
//  Created by Andy on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var startNum = 0
    @State private var endNum = 50
    @State private var result = 0
    
    var body: some View {
        VStack {
            Text("Random number!")
                .font(.title)
                .padding()
            
            Text("\(result)")
                .bold()
                .font(.largeTitle)
                .padding()
            
            HStack {
                TextField("Minimum number", value: $startNum, format: .number)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .padding()
                
                TextField("Maximum number", value: $endNum, format: .number)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .padding()
            }
            
//            Button("Go!", action: {
//                result = randomNumGen()
//            })
//            .bold()
//            .padding()
            
            Button {
                print("Button tapped")
                result = randomNumGen()
            } label: {
                Image("Tensor")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            }
        }
    }
    
    func randomNumGen() -> Int {
        let randomNum = Int.random(in: startNum...endNum)
        return randomNum
    }
}

#Preview {
    ContentView()
}
