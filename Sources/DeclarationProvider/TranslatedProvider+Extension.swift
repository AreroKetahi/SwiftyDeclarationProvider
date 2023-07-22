//
//  TranslatedProvider+Extension.swift
//
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
@available(macOS 11.0, *)
@available(watchOS 7.0, *)
@available(tvOS 14.0, *)
extension TranslatedDeclaration {
    /// Make a `View` based on `TranslatedDeclaration`
    /// - Returns: SwiftUI `View`
    public func makeView() -> some View {
        var identifiedDeclarations = [IdentifiableTranslatedProvider]()
        self.declaration.forEach { eachDeclaration in
            identifiedDeclarations.append(eachDeclaration.identified)
        }
        return HStack {
            LazyVStack(alignment: .leading) {
                identifiedDeclarations.eachView()
            }
        }
    }
}

@available(iOS 14.0, *)
@available(macOS 11.0, *)
@available(watchOS 7.0, *)
@available(tvOS 14.0, *)
extension [IdentifiableTranslatedProvider] {
    func eachView() -> some View {
        return Group {
            ForEach(self) { element in
                DeclarationToView(declaration: element.wrapped)
            }
        }
    }
}

@available(iOS 14.0, *)
@available(macOS 11.0, *)
@available(watchOS 7.0, *)
@available(tvOS 14.0, *)
extension [TranslatedProvider] {
    func eachView() -> some View {
        var identifiedDeclarations = [IdentifiableTranslatedProvider]()
        self.forEach { eachDeclaration in
            identifiedDeclarations.append(eachDeclaration.identified)
        }
        return Group {
            identifiedDeclarations.eachView()
        }
    }
}

extension TranslatedProvider {
    var identified: IdentifiableTranslatedProvider {
        IdentifiableTranslatedProvider(text: self.text, padlessText: self.padlessText, footnote: self.footnote, title: self.title, array: self.array, iarray: self.iarray, controls: self.controls)
    }
}

extension IdentifiableTranslatedProvider {
    var wrapped: TranslatedProvider {
        TranslatedProvider(text: self.text, padlessText: self.padlessText, footnote: self.footnote, title: self.title, array: self.array, iarray: self.iarray, controls: self.controls)
    }
}

@available(iOS 14.0, *)
@available(macOS 11.0, *)
@available(watchOS 7.0, *)
@available(tvOS 14.0, *)
struct DeclarationToView: View {
    var declaration: TranslatedProvider
    var body: some View {
        VStack(alignment: .leading) {
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
