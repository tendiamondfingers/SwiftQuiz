//
//  MainTabBarController.swift
//  SwiftQuiz
//
//  Created by Дмитрий Федоров on 29.04.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    let team = Team.getTeam()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers = tabBarController?.viewControllers else {
            return
        }
        
        viewControllers.forEach { viewControllers in
            if let quizVC = viewControllers as? QuizViewController {
                quizVC.team = team
            } else if let teamVC = viewControllers as? TeamViewController {
                teamVC.team = team
            }
        }
    }

}