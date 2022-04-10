//
//  CGFloat.swift
//  
//
//  Created by Javier Segura Perez on 9/4/22.
//

import Foundation


//@frozen
struct CGFloat : Equatable
{
    var v: Double = 0
    
    ///Create an instance initialized to zero.
    init() {}
    
    ///value rounded to the closest representable Self.
    convenience
    init( _ value: Float) {
        v = Double( value )
    }
    
    ///value rounded to the closest representable Self.
    convenience
    init( _ value: Double) {
        v = value
    }
    
    ///Create an instance initialized to value.
    convenience
    init( _ value: CGFloat) {
        v = value.v
    }
    
}
