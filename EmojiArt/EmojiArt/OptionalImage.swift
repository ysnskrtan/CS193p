//
//  OptionalImage.swift
//  EmojiArt
//
//  Created by Yasin Şükrü Tan on 22.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        Group {
            if uiImage != nil {
                Image(uiImage: uiImage!)
            }
        }
    }
}
