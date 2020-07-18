//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 18.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id{
                return index
            }
        }
        return nil
    }
}
