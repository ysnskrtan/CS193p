//
//  Array+Only.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 19.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
