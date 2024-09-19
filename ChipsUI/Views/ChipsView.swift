//
//  ChipsView.swift
//  ChipsUI
//
//  Created by test on 9/19/24.
//

import SwiftUI

struct ChipsView<Content: View>: View {
    @ViewBuilder var content: Content
    @Binding var value: Double
    
    var body: some View {
        Group(subviews: content) { collection in
            let chunkedCollection = collection.chunkByWidth(value)
            
            VStack(alignment: .center, spacing: 10) {
                ForEach(chunkedCollection.indices, id: \.self) { index in
                    HStack(spacing: 10) {
                        ForEach(chunkedCollection[index]) { subview in
                            //let viewWidth = subview.containerValues.viewWidth
                            //let _ = print(viewWidth)
                            subview
                        }
                    }
                }
            }
        }
    }
}
