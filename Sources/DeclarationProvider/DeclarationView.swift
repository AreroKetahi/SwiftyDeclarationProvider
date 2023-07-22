//
//  DeclarationView.swift
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
/// A view that can create preview of declaration like SwiftUI
public struct DeclarationView: View {
    var declaration: TranslatedDeclaration
    
    public var body: some View {
        declaration.makeView()
    }
    
    /// Add declaration directly to `View`
    /// - Parameters:
    ///   - declaration: Declaration Providers
    ///   - language: Language identifies of this declaration, default as `en`
    public init(@DeclarationBuilder declaration: () -> [DeclarationProvider], language: String = "en") throws {
        self.declaration = try Declaration(language: language, declaration: declaration).translate()
    }
    
    /// Add declaration to `View` by using `TranslatedDeclaration` property
    /// - Parameter declaration: `TranslatedDeclaration` property
    public init (_ declaration: TranslatedDeclaration) {
        self.declaration = declaration
    }
    
    /// Add declaration to `View` by using expression
    /// - Parameter declaration: Exrpression that return `TranslatedDeclaration`
    public init (_ declaration: () -> TranslatedDeclaration) {
        self.declaration = declaration()
    }
}
