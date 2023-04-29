//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 26.04.2023.
//

import UIKit

class QuizViewController: UIViewController {

    var team: [Team]!
    var questions: [Question]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {
            return
        }
        guard let topicVC = navigationVC.topViewController as? TopicTableViewController else {
            return
        }
        topicVC.questions = questions
    }
}

