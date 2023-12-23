//
//  ContentView.swift
//  MarkdownUnderlineDemo
//
//  Created by Peter Murín on 23/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text(underlineMarkdown: "__Hello__, world! __How__ are you **today**?")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
