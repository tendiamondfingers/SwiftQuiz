//
//  MainTabBarController.swift
//  SwiftQuiz
//
//  Created by Дмитрий Федоров on 29.04.2023.
//

import UIKit



final class TabBarController: UITabBarController {
    
    
    let team = Team.getTeam()
    let question = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewControllers = viewControllers else {
            return
        }
        
        for viewController in viewControllers {
            if let quizVC = viewController as? QuizViewController {
                // quizVC.questions = question
            } else if let teamVC = viewController as? TeamViewController {
                teamVC.team = team
            }
        }
    }
}
