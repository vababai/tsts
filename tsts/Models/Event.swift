//
//  Event.swift
//  tsts
//
//  Created by Evgeny Salov on 21.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import Foundation

class Event: Descriptionable {
    
    var startTime: Date?
    var endTime: Date?
    var name: String!
    
    init(startTime: Date, endTime: Date, name: String) {
        self.startTime = startTime
        self.endTime = endTime
        self.name = name
    }
    
    static func createElements(numberOfElements: Int) -> [Event] {
        var arrayOfElements:[Event] = []
        for _ in 0...numberOfElements {
            arrayOfElements.append(Event(startTime: Date.init(), endTime: Date.init(), name: String.random()))
        }
        return arrayOfElements
    }
    
}
