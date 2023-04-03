//
//  FruitModel.swift
//  Fruits
//
//  Created by Volodymyr Mendyk on 03/04/2023.
//

import SwiftUI

 // MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
