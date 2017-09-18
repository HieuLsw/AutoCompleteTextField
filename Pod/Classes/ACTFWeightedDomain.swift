//
//  ACTFWeightedDomain.swift
//  Pods
//
//  Created by Neil Francis Hipona on 9/15/17.
//  Copyright © 2017 AJ Bartocci. All rights reserved.
//

import Foundation

public protocol ACTFWeightedDomain {
    
    var text: String { get }
    var weight: Int { get set }
    
    mutating func updateWeightUsage()
}

public struct ACTFDomain: ACTFWeightedDomain {
    
    public let text: String
    public var weight: Int
    
    public init(text t: String, weight w: Int) {
        
        text = t
        weight = w
    }
    
    public mutating func updateWeightUsage() {
        
        weight += 1
    }
}
