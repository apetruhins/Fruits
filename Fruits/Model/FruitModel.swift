//
//  FruitsModel.swift
//  Fruits
//
//  Created by Alex on 30/05/2022.
//

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    var url: String
}
