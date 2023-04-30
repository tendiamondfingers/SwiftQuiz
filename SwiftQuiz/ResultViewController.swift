//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Сазонов Станислав on 27.04.2023.
//


import UIKit

final class ResultViewController: UIViewController {
    @IBOutlet var userScoreLabel: UILabel!
    @IBOutlet var doneButton: UIButton!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneButton.layer.cornerRadius = 15
        userScoreLabel.text = "Правильно \(result) из 5"
    }
    
    @IBAction func doneButtonPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyboard.instantiateViewController(identifier: "TopicTableViewController") as! TopicTableViewController
         present(vc, animated: true)
        
    }
}
