//
//  TeamViewController.swift
//  SwiftQuiz
//
//  Created by Дмитрий Федоров on 27.04.2023.
//

import UIKit

final class TeamViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    let team = Team.getTeam()

    private var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
            for member in team {
              print("\(member.fullName) (\(member.avatar))")
            }
            
        photoImageView.layer.cornerRadius = 10
        nameLabel?.text = team[currentIndex].fullName
        teamLabel.text = """
 Тимлид:
\(team[0].fullName)
 Команда:
\(team[1].fullName)
\(team[2].fullName)
\(team[3].fullName)
\(team[4].fullName)
"""

    }

    @IBAction func nextButtonTab(_ sender: UIButton) {
        currentIndex += 1
        if currentIndex == team.count {
            currentIndex = 0
            photoImageView.image = UIImage(named: team[currentIndex].avatar)
            nameLabel.text = team[currentIndex].fullName
        }  else {
            photoImageView.image = UIImage(named: team[currentIndex].avatar)
            nameLabel.text = team[currentIndex].fullName
        }
        
    }

    @IBAction func backButtonTab(_ sender: UIButton) {
        currentIndex -= 1
        if currentIndex < 0 {
            currentIndex = team.count - 1
            photoImageView.image = UIImage(named: team[currentIndex].avatar)
            nameLabel.text = team[currentIndex].fullName
        }  else {
            photoImageView.image = UIImage(named: team[currentIndex].avatar)
            nameLabel.text = team[currentIndex].fullName
        }
        
    }
}
