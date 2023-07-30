//
//  DeclarationBuilder.swift
//  
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation

/// Builder of Declaration
@resultBuilder
public struct DeclarationBuilder {
    public static func buildBlock(_ declarations: DeclarationProvider...) -> [DeclarationProvider] {
        declarations
    }
}
