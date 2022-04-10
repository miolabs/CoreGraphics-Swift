//
//  CGSize.swift
//  
//
//  Created by Javier Segura Perez on 9/4/22.
//

import Foundation

public struct CGSize : Equatable
{
    var width: CGFloat
    var height: CGFloat

    static var zero: CGSize { return CGSize ( width: 0, height: 0 ) }

    init(from: Decoder) { }
    
    /// Creates a size with dimensions specified as floating-point values.
    init(width: Double, height: Double) {
        self.width  = CGFloat ( width  )
        self.height = CGFloat ( height )
    }
        
    /// ///Creates a size with dimensions specified as CGFloat values.
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
        
    ///Creates a size with dimensions specified as integer values.
    init(width: Int, height: Int) {
        self.width  = CGFloat ( width  )
        self.height = CGFloat ( height )
    }
    
    /// Returns whether two sizes are equal.
    public func equalTo( _ size: CGSize) -> Bool {
        return ( self.width == size.width && self.height == size.height )
    }
    
    
    public static func == (lhs: CGSize, rhs: CGSize) -> Bool
    {
        return ( lhs.width == rhs.width && lhs.height == rhs.height )
    }

}
