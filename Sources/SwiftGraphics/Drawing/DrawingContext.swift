//
//  File.swift
//  
//
//  Created by Emory Dunn on 5/21/20.
//

import Foundation



public class SketchContext {
    static var context: DrawingContext?
}

public protocol DrawingContext {
    
}

extension CGContext: DrawingContext {
    
}
