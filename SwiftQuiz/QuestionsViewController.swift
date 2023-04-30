//
//  QuestionsViewController.swift
//  SwiftQuiz
//
//  Created by Виталий Сабин on 27.04.2023.
//

import UIKit


final class QuestionsViewController: UIViewController {

    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questions: [Question]!
    
    private var totalScore = 0
    private var currentIndex = 0
    
    private var totalTime = 5 // тестовый режим!!!
    private var secondsPassed = 0
    private var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        roundCorners()
        startTimer()
        updateUI(for: currentIndex)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.result = totalScore
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = answerButtons.firstIndex(of: sender) else { return }
        let answers = questions[currentIndex].answers
        let answer = answers[buttonIndex]
        totalScore += answer.score
        nextQuestion()
    }
    
    private func updateUI(for currentIndex: Int) {
        let currentQuestion = questions[currentIndex]
        let answers = currentQuestion.answers
        questionLabel.text = currentQuestion.title
        for (button, answer) in zip(answerButtons, answers) {
            button.setTitle(answer.text, for: .normal)
        }
        numberLabel.text = "Вопрос: \(currentIndex + 1) из \(questions.count)"
    }
    
    private func nextQuestion() {
        currentIndex += 1
        if currentIndex < questions.count {
            updateUI(for: currentIndex)
            return
        }
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    private func roundCorners() {
        for button in answerButtons {
            button.layer.cornerRadius = 10
        }
    }
    // MARK: - Metods for Timer
    private func startTimer () {
         timer.invalidate()
         progressBar.progress = 0
         secondsPassed = 0
         timer = Timer.scheduledTimer(
             timeInterval: 1.0,
             target: self,
             selector: #selector(updateTimer),
             userInfo: nil,
             repeats: true
         )
     }

    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = percentageProgress
            
        } else {
            timer.invalidate()
            showTimeIsUpAlert()
        }
    }
    
    private func showTimeIsUpAlert() {
        let alert = UIAlertController(title: "Увы, время вышло", message: "Гуглить можно и быстрее, время на прохождение теста закончилось", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.performSegue(withIdentifier: "showResult", sender: nil)
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
