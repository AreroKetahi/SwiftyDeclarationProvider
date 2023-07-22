//
//  DeclarationControls+Extensions.swift
//  
//
//  Created by 苏子轩 on 22/07/2023.
//

import Foundation
import SwiftUI

extension DGroup {
    public func translate() throws -> TranslatedProvider {
        var resultArray = [TranslatedProvider]()
        if let groupArray = self.content as? [DGroup] {
            try groupArray.forEach { eachGroup in
                try resultArray += eachGroup.translate().array!
            }
        } else {
            try self.content.forEach { eachDeclaration in
                if let title = eachDeclaration as? DTitle {
                    resultArray.append(try title.translate())
                } else if let text = eachDeclaration as? DText {
                    resultArray.append(try text.translate())
                } else if let ptext = eachDeclaration as? PadlessDText {
                    resultArray.append(try ptext.translate())
                } else if let footnote = eachDeclaration as? DFootnote {
                    resultArray.append(try footnote.translate())
                } else if let array = eachDeclaration as? DGroup {
                    resultArray.append(try array.translate())
                } else if let iarray = eachDeclaration as? IndentDGroup {
                    resultArray.append(try iarray.translate())
                } else if let divider = eachDeclaration as? DDivider {
                    resultArray.append(try divider.translate())
                } else {
                    throw DeclarationError.unexpectedElement
                }
            }
        }
        return TranslatedProvider(array: resultArray)
    }
}

extension IndentDGroup {
    public func translate() throws -> TranslatedProvider {
        var resultArray = [TranslatedProvider]()
        try self.content.forEach { eachDeclaration in
            if let title = eachDeclaration as? DTitle {
                resultArray.append(try title.translate())
            } else if let text = eachDeclaration as? DText {
                resultArray.append(try text.translate())
            } else if let ptext = eachDeclaration as? PadlessDText {
                resultArray.append(try ptext.translate())
            } else if let footnote = eachDeclaration as? DFootnote {
                resultArray.append(try footnote.translate())
            } else if let array = eachDeclaration as? DGroup {
                resultArray.append(try array.translate())
            } else if let iarray = eachDeclaration as? IndentDGroup {
                resultArray.append(try iarray.translate())
            } else if let divider = eachDeclaration as? DDivider {
                resultArray.append(try divider.translate())
            } else {
                throw DeclarationError.unexpectedElement
            }
        }
        return TranslatedProvider(iarray: resultArray)
    }
}

extension DTitle {
    public func translate() throws -> TranslatedProvider {
        return TranslatedProvider(title: self.content)
    }
}

extension DText {
    public func translate() throws -> TranslatedProvider {
        return TranslatedProvider(text: self.content)
    }
}

extension PadlessDText {
    public func translate() throws -> TranslatedProvider {
        return TranslatedProvider(padlessText: self.content)
    }
}

extension DFootnote {
    public func translate() throws -> TranslatedProvider {
        return TranslatedProvider(footnote: self.content)
    }
}

extension DDivider {
    public func translate() throws -> TranslatedProvider {
        return TranslatedProvider(controls: .divider)
    }
}
