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
    var value: Double = 0
    
    ///Create an instance initialized to zero.
    init() {}
    
    ///value rounded to the closest representable Self.
    init( _ value: Float) {
        self.value = Double( value )
    }
    
    ///value rounded to the closest representable Self.
    init( _ value: Double) {
        self.value = value
    }
    
    ///Create an instance initialized to value.
    init( _ value: CGFloat) {
        self.value = value.value
    }
    
}
