//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Сазонов Станислав on 27.04.2023.
//


import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var userScoreLabel: UILabel!
    
    @IBOutlet var doneButtons: [UIButton]!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorners()
        userScoreLabel.text = "Правильно \(result) из 5"
    }
    
    private func roundCorners() {
        for button in doneButtons {
            button.layer.cornerRadius = 10
        }
    }
    
    @IBAction func doneButtonPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let topicVC = storyboard.instantiateViewController(identifier: "TopicTableViewController") as! TopicTableViewController
        topicVC.modalPresentationStyle = .fullScreen
         present(topicVC, animated: true)
    }
    
    @IBAction func exitButtonPressed() {

    }
}
