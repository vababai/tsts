//
//  Descriptionable.swift
//  tsts
//
//  Created by Evgeny Salov on 18.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import Foundation
import SwiftUI

protocol Descriptionable {
    var presentName: String { get }
    var descriptionString: String { get }
}

extension Descriptionable {
    
    var presentName: String {
        return "\(type(of: self))"
    }
    
    var descriptionString: String {
        var result = ""
        let propertyList = Mirror(reflecting: self).children
        for property in propertyList {
            if let label = property.label {
                result = result + "\(label): \(property.value) \n"
            }
        }
        return result
    }
}
