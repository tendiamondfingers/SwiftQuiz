//
//  QuestionsViewController.swift
//  SwiftQuiz
//
//  Created by Виталий Сабин on 27.04.2023.
//

import UIKit
// Сказать Диме Келлеру, что нужно создать коллекцию аутлетов
// Нужен идентификатор для сегвея от экрана с вопросами на экран с результатом
// идентификатор - showResult
// сегвей должен идти не от кнопки, а от самого вью контроллера

final class QuestionsViewController: UIViewController {

    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBOutlet weak var progressView: UIProgressView!
    private var totalScore = 0
    private var currentIndex = 0
    
    var questions: [Question]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
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
        numberLabel.text = "Вопрос \(currentIndex + 1) из \(questions.count)"
    }
    
    private func nextQuestion() {
        currentIndex += 1
        if currentIndex < questions.count {
            updateUI(for: currentIndex)
            return
        }
        
        performSegue(withIdentifier: "showResult", sender: nil)
    }

}
