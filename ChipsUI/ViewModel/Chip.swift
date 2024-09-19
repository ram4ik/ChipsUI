//
//  Chip.swift
//  ChipsUI
//
//  Created by test on 9/19/24.
//

import SwiftUI

struct Chip: Identifiable {
    var id: String = UUID().uuidString
    var name: String
}

var mockChips: [Chip] = [
    .init(name: "Apple"),
    .init(name: "Google"),
    .init(name: "Microsoft"),
    .init(name: "Amazon"),
    .init(name: "Spotify"),
    .init(name: "Uber"),
    .init(name: "TikTok"),
    .init(name: "YouTube"),
    .init(name: "Facebook")
]
