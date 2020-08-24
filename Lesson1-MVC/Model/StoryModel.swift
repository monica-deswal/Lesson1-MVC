//
//  Story.swift
//  MVCSample
//
//  Created by Monica Deswal on 24/08/20.
//  Copyright © 2020 Monica Deswal. All rights reserved.
//

import Foundation

struct StoryModel : Codable{
    
    let stories : [Story]
    
    struct Story : Codable{
        let story1 : String
        let answer1a : String
        let answer1b : String
    }
}


