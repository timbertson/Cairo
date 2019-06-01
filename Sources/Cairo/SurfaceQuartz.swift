//
//  SurfaceQuartz.swift
//  Cairo
//
//  Copyright © 2017 PureSwift. All rights reserved.
//

import CCairo

#if os(macOS)

    import Cocoa
    public extension Surface {
        final class Quartz : Surface {
            public init(graphicsContext: CGContext, width: Int, height: Int) throws {
                let internalPointer = cairo_quartz_surface_create_for_cg_context( graphicsContext, UInt32(width), UInt32(height))!
                try super.init(internalPointer)
            }
        }
    }

#endif
