//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Сазонов Станислав on 27.04.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var userScoreLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userScoreLabel.text = "Твой результат \(result)"
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
        }
    
}
