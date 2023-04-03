//
//  OnboardingView.swift
//  Fruits
//
//  Created by Volodymyr Mendyk on 03/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
               FruitCardView(fruit: fruit)
            }
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
