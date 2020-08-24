//
//  ViewController.swift
//  Lesson1-MVC
//
//  Created by Monica Deswal on 24/08/20.
//  Copyright © 2020 Monica Deswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    
    var viewModel = StoryViewModel()
    
    //Changes
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpInterface()
        viewModel.createTheModekArray()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        self.displayTheData()
    }
    
    
    func setUpInterface() {
        self.choiceButton1.layer.cornerRadius = 10
        self.choiceButton2.layer.cornerRadius = 10
    }
    
    
    func displayTheData()  {
        self.questionLabel.text = self.viewModel.getTitleText()
       
        //   self.choiceButton1.titleText
        //        self.choiceButton1.sett
        //        text = self.viewModel.choiceButton1Title()
        //        self.choiceButton2.text = self.viewModel.choiceButton2Title()
    }
    
    @IBAction func SelectedChoice(_ sender: UIButton) {
        //  self.questionLabel.
    }
    
    
}

