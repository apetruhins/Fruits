//
//  ContentView.swift
//  Fruits
//
//  Created by Alex on 29/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @AppStorage("isOnboardingSetting") var isOnboardingSetting: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: Button
                    .sheet(isPresented: $isShowingSettings, onDismiss: {
                        isOnboarding = isOnboardingSetting
                    }, content: {
                        SettingsView()
                    })
            )
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
