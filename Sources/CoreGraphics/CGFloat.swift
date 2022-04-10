//
//  CGFloat.swift
//  
//
//  Created by Javier Segura Perez on 9/4/22.
//

import Foundation

typealias CGFloat.NativeType = Double
        
@frozen
public struct CGFloat : Equatable
{
    var v: Double = 0
    
    ///Create an instance initialized to zero.
    init() {}
    
    ///value rounded to the closest representable Self.

//    public init( _ value: Float) {
//        v = Double( value )
//    }

    ///value rounded to the closest representable Self.
    public init( _ value: Double) {
        v = value
    }

    ///Create an instance initialized to value.
    public init( _ value: CGFloat) {
        v = value.v
    }
        
    public init(floatLiteral value: CGFloat.NativeType) {
        
    }
}
