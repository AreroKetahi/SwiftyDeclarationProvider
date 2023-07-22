//
//  TranslatedProvider+Extension.swift
//
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
extension TranslatedDeclaration {
    public func toView() -> some View {
        return HStack {
            LazyVStack(alignment: .leading) {
                self.declaration.eachView()
            }
        }
    }
}

@available(iOS 13.0, *)
extension [TranslatedProvider] {
    func eachView() -> some View {
        return Group {
            ForEach(self, id:\.self) { element in
                DeclarationToView(declaration: element)
            }
        }
    }
}

@available(iOS 13.0, *)
struct DeclarationToView: View {
    var declaration: TranslatedProvider
    var body: some View {
        Group {
            if let text = declaration.text {
                Text(text)
                    .padding(.bottom)
            } else if let ptext = declaration.padlessText {
                Text(ptext)
            } else if let footnote = declaration.footnote {
                Text(footnote)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            } else if let title = declaration.title {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            } else if let array = declaration.array {
                array.eachView()
            } else if let iarray = declaration.iarray {
                iarray.eachView().padding(.leading)
            } else if let controls = declaration.controls {
                switch controls {
                case .divider:
                    Divider()
                }
            }
        }
    }
}
