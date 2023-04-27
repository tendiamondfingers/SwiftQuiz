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

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    private var totalScore = 0
    private var currentIndex = 0
    
    let questions: [Question] = [
        Question(
            topic: .dataTransfer,
            title: "Какой метод используется, чтобы закрыть экран без передачи данных?",
            answers: [
                Answer(text: "viewDidLoad", score: 0),
                Answer(text: "dismiss", score: 1),
                Answer(text: "prepare(for segue)", score: 0),
                Answer(text: "yankeeGoHome", score: 0)
            ]
        ),
        Question(
            topic: .dataTransfer,
            title: "Какой паттерн используется для передачи данных от одного объекта к другому?",
            answers: [
                Answer(text: "Делегирования", score: 1),
                Answer(text: "Программирования", score: 0),
                Answer(text: "Проектирования", score: 0),
                Answer(text: "Наследования", score: 0)
            ]
        ),
        Question(
            topic: .dataTransfer,
            title: "Что представляет собой делегат?",
            answers: [
                Answer(text: "class", score: 0),
                Answer(text: "struct", score: 0),
                Answer(text: "enum", score: 0),
                Answer(text: "protocol", score: 1)
            ]
        ),
        Question(
            topic: .dataTransfer,
            title: "Каким ключевым словом мы обязательно помечаем экземпляр делегата?",
            answers: [
                Answer(text: "weak", score: 0),
                Answer(text: "strong", score: 0),
                Answer(text: "unowned", score: 1),
                Answer(text: "amazing", score: 0)
            ]
        ),
        Question(
            topic: .dataTransfer,
            title: "Обязательны ли протоколы-делегаты для передачи данных?",
            answers: [
                Answer(text: "Да", score: 0),
                Answer(text: "Нет", score: 1),
                Answer(text: "Только при переходе от ячейки", score: 0),
                Answer(text: "Только в полнолуние", score: 0)
            ]
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
