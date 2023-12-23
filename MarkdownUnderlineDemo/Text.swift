//
//  Text.swift
//  MarkdownUnderlineDemo
//
//  Created by Peter Murín on 23/12/2023.
//

import SwiftUI

public extension Text {
    init(underlineMarkdown: String) {
        self = Text.parseMarkdown(underlineMarkdown)
    }

    private static func parseMarkdown(_ underlineMarkdown: String) -> Text {
        var components: [Text] = []
        let lines = underlineMarkdown.components(separatedBy: "\n")

        for line in lines {
            let componentsInLine = line.components(separatedBy: "__")

            for (index, component) in componentsInLine.enumerated() {
                if index % 2 == 0 {
                    components.append(Text(.init(component)))
                } else {
                    components.append(Text(.init(component)).underline())
                }
            }
        }

        return components.reduce(Text("")) { $0 + $1 + Text("") }
    }
}
