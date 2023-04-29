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
    
    var team: [Team]!

    private var currentIndex = 0
    let images =  ["Sergei", "DmitryF", "Stanislav", "Vitaly", "DmitryK"]
    let names = ["Cергей Захаров", "Дмитрий Федоров", "Станислав Сазонов", "Виталий Сабин", "Дмитрий Келлер"]
  

    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.layer.cornerRadius = 10
        nameLabel.text = names[currentIndex]
        teamLabel.text = """
 Тимлид - Cергей Захаров
 Команда:
 Дмитрий Федоров,
 Виталий Сабин,
 Станислав Сазонов,
 Дмитрий Келлер
"""
        print(team)
    }


    
    @IBAction func nextButtonTab(_ sender: UIButton) {
        currentIndex += 1
        if currentIndex == names.count {
            currentIndex = 0
            photoImageView.image = UIImage(named: images[currentIndex])
            nameLabel.text = names[currentIndex]
        }  else {
            photoImageView.image = UIImage(named: images[currentIndex])
            nameLabel.text = names[currentIndex]
        }
        
    }

    @IBAction func backButtonTab(_ sender: UIButton) {
        currentIndex -= 1
        if currentIndex < 0 {
            currentIndex = names.count - 1
            photoImageView.image = UIImage(named: images[currentIndex])
            nameLabel.text = names[currentIndex]
        }  else {
            photoImageView.image = UIImage(named: images[currentIndex])
            nameLabel.text = names[currentIndex]
        }
        
    }
}
