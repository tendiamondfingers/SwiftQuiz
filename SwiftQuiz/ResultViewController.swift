//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Сазонов Станислав on 27.04.2023.
//


import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var userScoreLabel: UILabel!
  
    @IBOutlet weak var doneButton: UIButton!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneButton.layer.cornerRadius = 10
        userScoreLabel.text = "Правильно \(result) из 5"
    }

    @IBAction func exitButtonPressed() {
     performSegue(withIdentifier: "showTopicVC", sender: nil)
    }
}
