//
//  Fresnel.swift
//  SwiftGraphics
//
//  Created by Emory Dunn on 5/20/20.
//  Copyright © 2020 Lost Cause Photographic, LLC. All rights reserved.
//

import Foundation

/// A specialized `RayTracer` that collimates intersecting rays and casts them along the vector normal of the lens
public class Fesnel: Line, RayTracer {
    
    /// The angle at which rays are reflected, relative to the normal
    public var reflectionAngle: Degrees = 180

    /// Find all intersecting points for a ray of a specified angle, terminating on a `BoundingBox`
    ///
    /// A `Fresnel` modyfies the specified angle to return lines perpendicular to the line
    ///
    /// - Parameters:
    ///   - angle: The angle of the ray being cast
    ///   - origin: The origin of the ray being cast
    ///   - bb: The `BoundingBox` to terminate the ray on
    ///   - objects: Objects to test for intersection, sorted by distance from the origin
    public func intersections(for angle: Radians, origin: Vector, bb: BoundingBox, objects: [Intersectable]) -> [Line] {
        
        // Make a mutable copy
        var angle = angle
        
        // Set angle to the normal angle
        angle = reflectionAngle.toRadians() + normal().heading()
        
        return defaultIntersections(for: angle, origin: origin, bb: bb, objects: objects)

        
    }
    
}
