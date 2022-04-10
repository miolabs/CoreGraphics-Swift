//
//  CGAffineTransform.swift
//  CoreGraphics-Swift
//  
//  Originally created by Geordie Jay on 24.05.17.
//  https://github.com/flowkey/UIKit-cross-platform/blob/master/Sources/CGAffineTransform.swift
//  Modified by Javier Segura Perez on 10/4/22.
//  Copyright © 2022 MIOLabs. All rights reserved.

import struct Foundation.AffineTransform
public typealias CGAffineTransform = AffineTransform

public extension CGAffineTransform {
    init(scaleX: CGFloat, y: CGFloat) {
        self.init(scaleByX: scaleX, byY: y)
    }

    var isIdentity: Bool {
        return self == .identity
    }

}
