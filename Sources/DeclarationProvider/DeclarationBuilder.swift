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
    public static func buildBlock() -> [DeclarationProvider] {
        []
    }
    
    public static func buildBlock<Declaration>
    (_ declaration: Declaration) -> [DeclarationProvider]
    where Declaration: DeclarationProvider {
        return [declaration]
    }
    
    public static func buildBlock<D0, D1>
    (_ d0: D0, _ d1: D1) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider {
        return [d0, d1]
    }
    
    public static func buildBlock<D0, D1, D2>
    (_ d0: D0, _ d1: D1, _ d2: D2) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider {
        return [d0, d1, d2]
    }
    
    public static func buildBlock<D0, D1, D2, D3>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider {
        return [d0, d1, d2, d3]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider {
        return [d0, d1, d2, d3, d4]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13, _ d14: D14) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider, D14: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13, _ d14: D14, _ d15: D15) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider, D14: DeclarationProvider, D15: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13, _ d14: D14, _ d15: D15, _ d16: D16) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider, D14: DeclarationProvider, D15: DeclarationProvider, D16: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13, _ d14: D14, _ d15: D15, _ d16: D16, _ d17: D17) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider, D14: DeclarationProvider, D15: DeclarationProvider, D16: DeclarationProvider, D17: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13, _ d14: D14, _ d15: D15, _ d16: D16, _ d17: D17, _ d18: D18) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider, D14: DeclarationProvider, D15: DeclarationProvider, D16: DeclarationProvider, D17: DeclarationProvider, D18: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18]
    }
    
    public static func buildBlock<D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19>
    (_ d0: D0, _ d1: D1, _ d2: D2, _ d3: D3, _ d4: D4, _ d5: D5, _ d6: D6, _ d7: D7, _ d8: D8, _ d9: D9, _ d10: D10, _ d11: D11, _ d12: D12, _ d13: D13, _ d14: D14, _ d15: D15, _ d16: D16, _ d17: D17, _ d18: D18, _ d19: D19) -> [DeclarationProvider]
    where D0: DeclarationProvider, D1: DeclarationProvider, D2: DeclarationProvider, D3: DeclarationProvider, D4: DeclarationProvider, D5: DeclarationProvider, D6: DeclarationProvider, D7: DeclarationProvider, D8: DeclarationProvider, D9: DeclarationProvider, D10: DeclarationProvider, D11: DeclarationProvider, D12: DeclarationProvider, D13: DeclarationProvider, D14: DeclarationProvider, D15: DeclarationProvider, D16: DeclarationProvider, D17: DeclarationProvider, D18: DeclarationProvider, D19: DeclarationProvider {
        return [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19]
    }
}
