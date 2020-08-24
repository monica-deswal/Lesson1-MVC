//
//  StoryViewModel.swift
//  MVCSample
//
//  Created by Monica Deswal on 24/08/20.
//  Copyright © 2020 Monica Deswal. All rights reserved.
//

import Foundation

struct  StoryViewModel {
    
    let storyJSONString = """
{
    "stories": [
      {
        "story1": "You have been working all day, dreaming of what to eat after your 13 and a half hour shift. You have got two options this late at night.",
        "answer1a": "Taco Bell",
        "answer1b": "Chick-fil-a"
      },
      {
        "story1": "You pull up to the drive through, but it was too late. They have already closed! There is just enought time to make it to Taco Bell if you hurry now. What shall you do?",
        "answer1a": "Drift your way back to Taco Bell.",
        "answer1b": "Go home and wonder what could have been."
      },
      {
        "story1": "You gaze into the light at the end of the tunnel. It's the beautiful menu glowing in the night. You have two options to satisfy your cravings.",
        "answer1a": "The Cheesy Gordita Crunch",
        "answer1b": "The Legendary Beefy Crunch Burrito"
      },
      {
        "story1": "You gaze into the light at the end.",
        "answer1a": "The Cheesy Gordita Crunch",
        "answer1b": "The Legendary Beefy Crunch Burrito"
      }
    ]
}
"""
    
    
    var arrayOfStories  : [StoryModel.Story]?
    var currentIndex = 0
    
    mutating func createTheModekArray()  {
        let data = storyJSONString.data(using: .utf8)!
        do {
            let jsonData = try JSONDecoder().decode(StoryModel.self, from: data)
            arrayOfStories = jsonData.stories
        }catch {
            print(error.localizedDescription)
        }
    }
    

    func getTitleText() -> String {
        return arrayOfStories?[currentIndex].story1 ?? ""
    }
    
    func choiceButton1Title() -> String {
        return arrayOfStories?[currentIndex].answer1a ?? ""
    }
    
    func choiceButton2Title() -> String {
        return arrayOfStories?[currentIndex].answer1b ?? ""
    }

}

