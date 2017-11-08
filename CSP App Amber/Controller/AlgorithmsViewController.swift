//
//  AlgorithmsViewController.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController
{
    @IBOutlet weak var AlgorithmsLabel: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO:Define Algorithm and all the steps.
        let algorithm :String = "These are instructions to create a project n java using Eclipse and github   \n"
        let StepOne :String = "First, open Eclipse Oxygen. \n"
        let StepTwo :String = "Create a workspace or select one already made. Press launch. \n"
        let StepThree :String = "Go up to the top of the screen and press File, \n then New, then Java Project."
        let StepFour :String = "Name your project however you want, but make sure it is what you are doing for the project. \n Ex. Chatbot is a good name for a chatbot project. Or ListsAndStrings if you are focusing on them."
        let StepFive :String = "Go to the src folder and right click, go to New, and then Package. \n Name it ~.controller, the ~ as your own name, such as chat for chatbot. Repeat this step so you have: \n ~.model \n ~.view \n ~.tests. \n"
        let StepSix :String = "In ~.controller, create java class ~Controller. (Ex ChatController)  Initialize this code. \n public void start() \n { \n } \n"
        let StepSeven :String = "Then create java class ~Runner. (Ex ChatRunner) Initialize this code \n public static void main(String []args) \n { \n } \n"
        let StepEight :String = "In ~.model, create classes according to what you are trying to model. Name is ~ (Ex Chatbot, Movie) \n"
        let StepNine :String = "In ~.tests, import tests by right clicking the package, and selecting Import. Import the tests folder you have. \n"
        let StepTen :String = "Save. Open Github and go to file, new repository. Type in name of the file. \n Get the local path set to WHERE the folder is located in, NOT the folder. \n Then press create repository. Go to the bottom of github and press the undo button and then go to Repository, repository settings. \n In ignore file, insert the following code, then you are all ready to go! \n bin/ \n */class \n .DS_Store \n \n "
        
        //TODO Finish adding  steps to the algorithm
        algorithmSteps = [StepOne, StepTwo, StepThree, StepFour, StepFive, StepSix, StepSeven, StepEight, StepNine, StepTen]
        
        let attributesDictionary = [NSAttributedStringKey.font : AlgorithmsLabel.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "❀"
            let formattedStep :String = "\n \(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string:formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range:
            NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        AlgorithmsLabel.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
        
        }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
