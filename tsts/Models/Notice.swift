//
//  Notice.swift
//  tsts
//
//  Created by Evgeny Salov on 18.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import Foundation

struct Notice: Descriptionable {

    var flightDate: Date?
    var gate: String?
    
    static func createElements(numberOfElements: Int) -> [Notice] {
        var arrayOfElements:[Notice] = []
        for i in 0...numberOfElements {
            arrayOfElements.append(Notice(flightDate: nil, gate: "\(i)"))
        }
        return arrayOfElements
    }
        
}

