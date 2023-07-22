//
//  DeclarationView.swift
//
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
/// A view that can create preview of declaration like SwiftUI
struct DeclarationView: View {
    var declaration: [DeclarationProvider]
    var language: String
    
    var body: some View {
        try! Declaration(language: language, declaration: declaration).translate().toView()
    }
    
    init(@DeclarationBuilder declaration: () -> [DeclarationProvider], language: String = "en") {
        self.declaration = declaration()
        self.language = language
    }
}
