//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Volodymyr Mendyk on 03/04/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(
                gradient:
                    Gradient(
                        colors: fruit.gradientColors),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(
                    color:
                        Color(
                            red: 0,
                            green: 0,
                            blue: 0,
                            opacity: 0.15
                        ),
                    radius: 8,
                    x: 2,
                    y: 2
                )
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
        .frame(height: 440)
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
