//
//  String+Extensions.swift
//  ChipsUI
//
//  Created by test on 9/19/24.
//

import SwiftUI

extension String {
    func size(_ font: UIFont) -> CGSize {
        let attribute = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: attribute)
    }
}
