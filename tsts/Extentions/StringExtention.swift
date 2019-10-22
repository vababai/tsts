//
//  StringExtention.swift
//  tsts
//
//  Created by Evgeny Salov on 21.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import Foundation

extension String {

    static func random(length: Int = 3) -> String {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString: String = ""

        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(base.count))
            randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
}
