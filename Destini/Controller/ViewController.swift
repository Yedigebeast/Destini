//
//  ViewController.swift
//  Destini
//
//  Created by Yedige Ashirbek on 20.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    func updateTexts(numberOfStories: Int) {
        storyLabel.text = storyBrain.stories[numberOfStories].title
        choice1Button.setTitle(storyBrain.stories[numberOfStories].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[numberOfStories].choice2, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTexts(numberOfStories: storyBrain.currentStoryNumber)
    }
    
    @IBAction func choiceButton(_ sender: UIButton) {
        let userChoiceMade = sender.currentTitle!
        
        storyBrain.nextStory(userChoiceMade: userChoiceMade)
        
        updateTexts(numberOfStories: storyBrain.currentStoryNumber)
    }
    

}

