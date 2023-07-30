# SwiftyDeclarationProvider

A utility library for creating long declaration contexts like SwiftUI.

![GitHub release (with filter)](https://img.shields.io/github/v/release/AreroKetahi/SwiftyDeclarationProvider)
[![Static Badge](https://img.shields.io/badge/compatible-SwiftPM-orange)](https://github.com/apple/swift-package-manager)
[![GitHub](https://img.shields.io/github/license/AreroKetahi/SwiftyDeclarationProvider)]([https://](https://github.com/AreroKetahi/SwiftyDeclarationProvider/LICENSE))

![Static Badge](https://img.shields.io/badge/avaliable-iOS_14.0%2B-red)
![Static Badge](https://img.shields.io/badge/avaliable-iPadOS_14.0%2B-orange)
![Static Badge](https://img.shields.io/badge/avaliable-macOS_Big_Sur%2B-yellow)
![Static Badge](https://img.shields.io/badge/avaliable-watchOS_7.0%2B-green)
![Static Badge](https://img.shields.io/badge/avaliable-tvOS_14.0%2B-blue)
![Static Badge](https://img.shields.io/badge/avaliable-visionOS_beta%2B-purple)

## Initialize

### Add To Project

SwiftyDeclarationProvider support [Swift Package Manager](https://github.com/apple/swift-package-manager). You can use following steps to add this library to your project.

1. Open your Xcode project.
2. Click File -> Add Package Denpendenicies...
3. Paste `https://github.com/AreroKetahi/SwiftyDeclarationProvider` to search fields.
4. Change Dependency Rule to `Up to Next Minor Version`.
5. Click "Copy Dependency" to add this library to your project.

### Import to codes

- SwiftyDeclarationProvider use `DeclarationProvider` for namespace, after using that, please add `import DeclarationProvider` at the top of the codes.



## Quick Setup

### Directly present on View

`DeclarationView` can present declaration on views straightly, this is also a way to preview your declaration after export.

```swift
struct SampleView: View {
    var body: some View {
        DeclarationView {
            // add your declarations here...
          
            // This is a title
            DTitle("Sample title")
            // This is a indented group
            IndentGroup {
                // This is a text
                DText("Sample text")
                // This is a divider
                DDivider()
            }
            // This is another text
            DText("Sample text")
        }
    }
}
```

### Present Declaration according to a JSON file or Property List

Before making a Declaration, please make JSON fiile of Property List by using `JSONDecoder` or `PropertyListDecoder`.

```swift
let jsonDecoder = JSONDecoder()
let plistDecoder = PropertyListDecoder()

let fromJson = jsonDecoder.decode(TranslatedDeclaration.self, from: data)
let fromPlist = plistDecoder.decode(TranslatedDeclaration.self, from: data)
```

After TranslatedDeclaration make, use `DeclarationView(_ declaration: TranslatedDeclaration)` to add declaration to your SwiftUI view.

> You can also use `DeclarationView(_ declaration: () -> TranslatedDeclaration)` to make a void to make this view.

### Export Declaration

You can export declaration by using `TranslatedDeclaration`.

`TranslatedDeclaration` comforms to `Codable`, you can export it as any format you want.

```swift
// This is an example of exporting JSON file
let declaration = Declaration(language: "en") {
    // Add your declaration here
}

do {
    let translated = try delcaration.translate()
    let encoder = JSONEncoder()
    let encoded = encoder.encode(translated)
} catch {
    print(error)
}
```

## Documentation

You can build documentation after download by using `control+shift+command+D`.

There everything on it.

