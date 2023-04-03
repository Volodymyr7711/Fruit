//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Volodymyr Mendyk on 03/04/2023.
//

import SwiftUI

struct SourceLinkView: View {

    // MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedis.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
