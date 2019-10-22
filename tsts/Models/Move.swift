//
//  Move.swift
//  tsts
//
//  Created by Evgeny Salov on 21.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import Foundation

class Move: Descriptionable {
    
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
    
    init(fromPlace: String, toPlace: String, estimateTime: TimeInterval) {
        self.fromPlace = fromPlace
        self.toPlace = toPlace
        self.estimateTime = estimateTime
    }
    
    static func createElements(numberOfElements: Int) -> [Move] {
        var arrayOfElements:[Move] = []
        for i in 0...numberOfElements {
            arrayOfElements.append(Move(fromPlace: String.random(), toPlace: String.random(), estimateTime: TimeInterval(i)))
        }
        return arrayOfElements
    }
    
}
