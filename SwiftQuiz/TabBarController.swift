//
//  MainTabBarController.swift
//  SwiftQuiz
//
//  Created by Дмитрий Федоров on 27.04.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let team = Team.getTeam()

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let teamVC = $0 as? TeamViewController {
                teamVC.team = team
            }
        }
    }
    
}
