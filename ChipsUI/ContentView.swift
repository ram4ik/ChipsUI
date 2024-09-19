//
//  ContentView.swift
//  ChipsUI
//
//  Created by test on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var value: Double = 300.0
    
    var body: some View {
        NavigationStack {
            VStack {
                ChipsView(content: {
                    ForEach(mockChips) { chip in
                        
                        let viewWidth = chip.name.size(.preferredFont(forTextStyle: .body)).width + 20
                        
                        Text(chip.name)
                            .font(.body)
                            .foregroundStyle(.white)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 10)
                            .background(.red.gradient, in: .capsule)
                            .containerValue(\.viewWidth, viewWidth)
                    }
                }, value: $value)
                .frame(width: 300)
                .padding(15)
                .background(.primary.opacity(0.06), in: .rect(cornerRadius: 10))
                
                Slider(value: $value, in: 30...500)
                    .padding()
            }
            .padding(15)
            .navigationTitle("Chip's")
        }
    }
}

#Preview {
    ContentView()
}
