//
//  Declaration.swift
//  
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation

/// Declaration package
public struct Declaration {
    var language: String
    
    var declaration: [DeclarationProvider]
    
    /// Create declaration by expressions
    /// - Parameters:
    ///   - language: Languange identifier
    ///   - declaration: Expression of `DeclarationProvider`
    public init(language: String, @DeclarationBuilder declaration: () -> [DeclarationProvider]) {
        self.language = language
        self.declaration = declaration()
    }
    
    /// Create declaration by manual input
    /// - Parameters:
    ///   - language: Languange identifier
    ///   - declaration: Array of `DeclarationProvider`
    public init(language: String, declaration: [DeclarationProvider]) {
        self.language = language
        self.declaration = declaration
    }
}

extension Declaration {
    /// Translate `Declaration` to `TranslatedDeclaration`
    /// - Returns: Translated declaration
    public func translate() throws -> TranslatedDeclaration {
        var resultDeclataion = [TranslatedProvider]()
        if let array = self.declaration as? [DGroup] {
            try array.forEach { array in
                resultDeclataion += try array.translate().array!
            }
        } else {
            try self.declaration.forEach { eachDeclaration in
                resultDeclataion.append(try eachDeclaration.translate())
            }
        }
        return TranslatedDeclaration(language: self.language, declaration: resultDeclataion)
    }
}
