//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Alex on 31/05/2022.
//

import SwiftUI

struct SourceLinkView: View {
    
    var fruit: Fruit
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: fruit.url)!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[8])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
