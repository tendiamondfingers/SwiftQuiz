//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 26.04.2023.
//

import UIKit

final class QuizViewController: UIViewController {

    @IBOutlet var playButton: UIButton!
    
    var questions: [Question]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 15
    }
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {
            return
        }
        //guard let topicVC = navigationVC.topViewController as? TopicTableViewController else {
            return
        }
        //topicVC.questions = questions
    } */
}

