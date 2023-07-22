//
//  TranslatedProvider.swift
//  
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation

/// An enumurate that provide single controls of translated Declarations
enum TranslatedControls: String, Codable {
    case divider
}

/// A struct that provide traslated DeclarationProvider
public struct TranslatedProvider: Codable, Hashable {
    var text: String?
    var padlessText: String?
    var footnote: String?
    var title: String?
    var array: [TranslatedProvider]?
    var iarray: [TranslatedProvider]?
    var controls: TranslatedControls?
}

/// A struct that provide translatd Declaration
public struct TranslatedDeclaration: Codable {
    var language: String
    var declaration: [TranslatedProvider]
}

extension TranslatedProvider {
    /// Depack trasnlated pack to original declarations
    /// - Returns: Simplifiled DeclarationProvider
    internal func depack() throws -> DeclarationProvider {
        if let text = self.text {
            return DText(text)
        } else if let ptext = self.padlessText {
            return PadlessDText(ptext)
        } else if let footnote = self.footnote {
            return DFootnote(footnote)
        } else if let title = self.title {
            return DTitle(title)
        } else if let array = self.array {
            var resultContent = [DeclarationProvider]()
            try array.forEach { eachCase in
                resultContent.append(try eachCase.depack())
            }
            return DGroup(resultContent)
        } else if let iarray = self.iarray {
            var resultContent = [DeclarationProvider]()
            try iarray.forEach { eachCase in
                resultContent.append(try eachCase.depack())
            }
            return IndentDGroup(resultContent)
        } else if let controls = self.controls {
            switch controls {
            case .divider:
                return DDivider()
            }
        } else {
            throw DeclarationError.unexpectedElement
        }
    }
}

extension TranslatedDeclaration {
    /// Depack trasnlated pack to original declarations
    /// - Returns: Simplifiled Declaration
    public func depack() throws -> Declaration {
        var resultDeclaration = [DeclarationProvider]()
        try self.declaration.forEach { eachDeclaration in
            resultDeclaration.append(try eachDeclaration.depack())
        }
        return Declaration(language: self.language, declaration: resultDeclaration)
    }
}
