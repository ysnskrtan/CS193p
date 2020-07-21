//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Yasin Şükrü Tan on 21.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//
//  Model

import Foundation

struct EmojiArt {
    var backgroundURL: URL?
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable {
        let text: String
        var x: Int
        var y: Int
        var size: Int
        var id: Int //   = UUID() Int is enough for this project
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int){ // fileprivate means private in this file
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    private var uniqueEmojiId = 0
    
    mutating func addEmoji(_ text:String, x: Int, y: Int, size: Int) {
        uniqueEmojiId += 1
        emojis.append(Emoji(text: text, x: x, y: y, size: size, id: uniqueEmojiId))
    }
}
