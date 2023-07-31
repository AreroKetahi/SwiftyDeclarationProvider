import XCTest
@testable import DeclarationProvider

final class DeclarationProviderTests: XCTestCase {
    @available(iOS 17.0, *)
    func testDeclaration() throws {
        let de = Declaration(language: "zh-Hans") {
            DTitle("title1")
            DGroup {
                DGroup {
                    DTitle("title2")
                }
                DGroup {
                    DText("hello world")
                }
                DText("1234")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
                DText("1456")
            }
            IndentDGroup {
                DTitle("Test")
                DText("Hello")
                IndentDGroup {
                    DTitle("Test2")
                    DText("Hello2")
                }
            }
        }
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let encoded = try! encoder.encode(try! de.translate())
        print(String(data: encoded, encoding: .utf8)!)
        
        let decoder = JSONDecoder()
        let tranlated = try! decoder.decode(TranslatedDeclaration.self, from: encoded)
        print(try! tranlated.depack())
    }
}
