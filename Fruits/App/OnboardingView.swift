//
//  OnboardingView.swift
//  Fruits
//
//  Created by Alex on 29/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...4]) { fruit in
                FruitCardView(fruit: fruit)
            } //: ForEach loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
