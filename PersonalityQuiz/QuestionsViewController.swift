//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Amy Drelicharz on 3/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var rangeStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
 
    @IBOutlet weak var singleButtonOne: UIButton!
    @IBOutlet weak var singleButtonTwo: UIButton!
    @IBOutlet weak var singleButtonThree: UIButton!
    @IBOutlet weak var singleButtonFour: UIButton!
    
    @IBOutlet weak var multipleLabelOne: UILabel!
    @IBOutlet weak var multipleSwitchOne: UISwitch!
    
    @IBOutlet weak var multipleLabelTwo: UILabel!
    @IBOutlet weak var multipleSwitchTwo: UISwitch!
    
    @IBOutlet weak var multipleLabelThree: UILabel!
    @IBOutlet weak var multipleSwitchThree: UISwitch!
    
    @IBOutlet weak var multipleLabelFour: UILabel!
    @IBOutlet weak var multipleSwitchFour: UISwitch!
    
    @IBOutlet weak var rangeSlider: UISlider!
    @IBOutlet weak var rangeLabelOne: UILabel!
    @IBOutlet weak var rangeLabelTwo: UILabel!
    
    var questionIndex = 0
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type: .single, answers:[
                    Answer(text: "Steak", type: .dog),
                    Answer(text: "Fish", type: .cat),
                    Answer(text: "Carrots", type: .rabbit),
                    Answer(text: "Corn", type: .turtle)
            ]),
        
        Question(text: "Which activities do you enjoy?",
                 type: .multiple,answers:[
                    Answer(text: "Swimming", type: .turtle),
                    Answer(text: "Sleeping", type: .cat),
                    Answer(text: "Cuddling", type: .rabbit),
                    Answer(text: "Eating", type: .dog)
            ]),
        
    Question(text: "How much do you enjoy car rides?",
             type: .ranged, answers:[
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notic them", type: .turtle),
                Answer(text: "I love them", type: .dog)
        ])
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        progressView.setProgress(totalProgress, animated: true)
    }
    
    func updateSingleStack (using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButtonOne.setTitle(answers[0].text, for: .normal)
        singleButtonTwo.setTitle(answers[1].text, for: .normal)
        singleButtonThree.setTitle(answers[2].text, for: .normal)
        singleButtonFour.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack (using answers: [Answer]) {
        multipleStackView.isHidden = false
        multipleLabelOne.text = answers[0].text
        multipleLabelTwo.text = answers[1].text
        multipleLabelThree.text = answers[2].text
        multipleLabelFour.text = answers[3].text
    }
    
    func updateRangedStack (using answers: [Answer]) {
        rangeStackView.isHidden = false
        rangeLabelOne.text = answers.first?.text
        rangeLabelTwo.text = answers.last?.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
