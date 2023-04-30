//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 26.04.2023.
//

import UIKit

final class QuizViewController: UIViewController {
    
    @IBOutlet var playButton: UIButton!
    
    let team = Team.getTeam()
    let question = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let teamVC = segue.destination as? TeamViewController {
            teamVC.team = team
        } else if let questionVC = segue.destination as? TopicTableViewController{
            questionVC.questions = question
        }
    }
    
}

