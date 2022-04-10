//
//  CGPoint.swift
//  CoreGraphics-Swift
//
//  Originally created by Chris on 19.06.17.
//  https://github.com/flowkey/UIKit-cross-platform/blob/master/Sources/CGPoint.swift
//  Modified by Javier Segura Perez on 10/4/22.
//  Copyright © 2022 MIOLabs. All rights reserved.

public struct CGPoint {
    public var x: CGFloat = 0
    public var y: CGFloat = 0
    
    public init() {}
    
    public init(x: CGFloat, y: CGFloat) {
        self.x = x; self.y = y
    }
    
    public init(x: Int, y: Int) {
        self.x = CGFloat(x); self.y = CGFloat(y)
    }
    
    public static let zero = CGPoint()
    public static prefix func - (point: CGPoint) -> CGPoint {
        return CGPoint(x: -point.x, y: -point.y)
    }
}

extension CGPoint: CustomStringConvertible {
    public var description: String {
        return "(\(x), \(y))"
    }
}

extension CGPoint {
    public func applying(_ t: CGAffineTransform) -> CGPoint {
        return CGPoint(
            x: x * t.m11 + y * t.m21 + t.tX,
            y: x * t.m12 + y * t.m22 + t.tY
        )
    }
}

extension CGPoint: Equatable {
    public static func == (lhs: CGPoint, rhs: CGPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

extension CGPoint {
    public static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint( x: lhs.x + rhs.x, y: lhs.y + rhs.y )
    }

}
