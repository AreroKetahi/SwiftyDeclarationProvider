//
//  DeclarationControls.swift
//  
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation
import SwiftUI

/// The protocol of Declaration
public protocol DeclarationProvider {
    /// Translate DeclarationProvider to TranslatedProvider
    /// - Returns: A TranslatedProvider struct
    func translate() throws -> TranslatedProvider
}

/// A group, can provide max of 20 elements
public struct DGroup: DeclarationProvider {
    var content: [DeclarationProvider]
    
    public init(@DeclarationBuilder content: () -> [DeclarationProvider]) {
        self.content = content()
    }
    
    init(_ content: [DeclarationProvider]) {
        self.content = content
    }
}

/// An indented group, can provide max of 20 elements
public struct IndentDGroup: DeclarationProvider {
    
    var content: [DeclarationProvider]
    
    public init(@DeclarationBuilder content: () -> [DeclarationProvider]) {
        self.content = content()
    }
    
    init(_ content: [DeclarationProvider]) {
        self.content = content
    }
}

/// A title
public struct DTitle: DeclarationProvider {
    var content: String
    
    public init(_ content: String) {
        self.content = content
    }
}

/// A padding text
public struct DText: DeclarationProvider {
    var content: String
    
    public init(_ content: String) {
        self.content = content
    }
}

/// A padless footnote
public struct DFootnote: DeclarationProvider {
    var content: String
    
    public init(_ content: String) {
        self.content = content
    }
}

/// A padless text
public struct PadlessDText: DeclarationProvider {
    var content: String
    
    public init(_ content: String) {
        self.content = content
    }
}

/// A divider
public struct DDivider: DeclarationProvider {
    public init() {
        
    }
}
