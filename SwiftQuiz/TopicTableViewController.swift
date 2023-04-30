//
//  TopicTableViewController.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 27.04.2023.
//

import UIKit

final class TopicTableViewController: UITableViewController {
    
    var questions: [Topic: [Question]]!
    
    private var topics: [Topic] = [
        .basics,
        .mvc,
        .collections,
        .screenTransition,
        .dataTransfer,
        .classes,
        .lifeCircle,
        .structs,
        .uiKit,
        .functions
    ]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath)
        let topic = topics[indexPath.row]
        
        switch topic {
        case .basics:
            cell.textLabel?.text = "Базовые операторы"
        case .mvc:
            cell.textLabel?.text = "MVC"
        case .collections:
            cell.textLabel?.text = "Коллекции"
        case .screenTransition:
            cell.textLabel?.text = "Переходы между экранами"
        case .functions:
            cell.textLabel?.text = "Функции"
        case .dataTransfer:
            cell.textLabel?.text = "Передача данных между экранами"
        case .classes:
            cell.textLabel?.text = "Классы"
        case .lifeCircle:
            cell.textLabel?.text = "Жизненный цикл View"
        case .structs:
            cell.textLabel?.text = "Структуры"
        case .uiKit:
            cell.textLabel?.text = "Общие вопросы UIKit"
        }
        
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let destinationVC = segue.destination as? QuestionsViewController {
            let selectedTopic = topics[indexPath.row]
            let selectedQuestions = questions[selectedTopic] ?? []
            destinationVC.questions = selectedQuestions
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.identifier == "showTopicVC" else { return }
    }
}


