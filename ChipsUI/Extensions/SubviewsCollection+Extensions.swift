//
//  SubviewsCollection+Extensions.swift
//  ChipsUI
//
//  Created by test on 9/19/24.
//

import SwiftUI

extension SubviewsCollection {
    
    func chunkByWidth(_ containerWidth: CGFloat) -> [[Subview]] {
        var row: [Subview] = []
        var rowWidth: CGFloat = 0
        var rows: [[Subview]] = []
        let spacing: CGFloat = 10
        
        for subview in self {
            let viewWidth = subview.containerValues.viewWidth + spacing
            
            rowWidth += viewWidth
            
            if rowWidth < containerWidth {
                row.append(subview)
            } else {
                rows.append(row)
                row = [subview]
                rowWidth = viewWidth
            }
        }
        
        if !row.isEmpty {
            rows.append(row)
        }
        
        return rows
    }
    
    func chunked(_ size: Int) -> [[Subview]] {
        return stride(from: 0, to: count, by: size).map { index in
            Array(self[index..<Swift.min(index + size, count)])
        }
    }
}
