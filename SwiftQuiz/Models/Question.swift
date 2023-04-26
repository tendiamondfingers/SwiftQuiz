//
//  Question.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 26.04.2023.
//

struct Question {
    let topic: Topic
    let title: String
    let answers: [Answer]
}

struct Answer {
    let text: String
    let score: Int
}

enum Topic {
    case basics
    case mvc
    case collections
    case screenTransition
    case functions
    case dataTransfer
    case classes
    case lifeCircle
    case structs
    case uiKit
}

func getQuestions() -> [Question] {
    [
        Question(
            topic: .structs,
            title: "Каким ключевым словом обозначается структура в коде?",
            answers: [
                Answer(text: "struct", score: 1),
                Answer(text: "class", score: 0),
                Answer(text: "structure", score: 0),
                Answer(text: "Struct", score: 0)
            ]
        ),
        Question(
            topic: .structs,
            title: "Основное отличие структуры от класса?",
            answers: [
                Answer(text: "Нельзя объявлять инициализаторы", score: 0),
                Answer(text: "Нельзя объявлять методы", score: 0),
                Answer(text: "Нельзя использовать деинициализатор", score: 1),
                Answer(text: "Нельзя объявлять свойства", score: 0)
            ]
        ),
        Question(
            topic: .structs,
            title: "Имена структур должны начинаться с UpperCamelCase или lowerCamelCase?",
            answers: [
                Answer(text: "lowerCamesCase", score: 0),
                Answer(text: "Без разницы", score: 0),
                Answer(text: "UpperCamesCase", score: 1),
                Answer(text: "Зависит от проекта", score: 0)
            ]
        ),
        Question(
            topic: .structs,
            title: "Можно ли наследоваться от структуры в Swift?",
            answers: [
                Answer(text: "Можно", score: 0),
                Answer(text: "Нельзя", score: 1),
                Answer(text: "Только в случае, если структура объявлена как final", score: 0),
                Answer(text: "Только если структура содержит хотя бы один метод", score: 0)
            ]
        ),
        Question(
            topic: .structs,
            title: "Каким образом реализованы все базовые типы в Swift?",
            answers: [
                Answer(text: "Как методы", score: 0),
                Answer(text: "Как классы", score: 0),
                Answer(text: "Как сабклассы", score: 0),
                Answer(text: "Как структуры", score: 1)
            ]
        ),
        Question(
            topic: .uiKit,
            title: "За что отвечает метод isHidden?",
            answers: [
                Answer(text: "За установку размера элемента", score: 0),
                Answer(text: "За установку цвета элемента", score: 0),
                Answer(text: "За расположение элементов на экране", score: 0),
                Answer(text: "За отображение или скрытие элемента на экране", score: 1)
            ]
        ),
        Question(
            topic: .uiKit,
            title: "От какого класса наследуется UIButton?",
            answers: [
                Answer(text: "UIView", score: 0),
                Answer(text: "UIControl", score: 1),
                Answer(text: "UILabel", score: 0),
                Answer(text: "UITextField", score: 0)
            ]
        ),
        Question(
            topic: .uiKit,
            title: "Что такое констрейнты?",
            answers: [
                Answer(text: "Ограничение позиций и размера элементов на экране", score: 1),
                Answer(text: "Стиль отображения элементов", score: 0),
                Answer(text: "Отвечает за передачу данных", score: 0),
                Answer(text: "Отвечает за управление в интерфейсе", score: 0)
            ]
        ),
        Question(
            topic: .uiKit,
            title: "Сколько основных элементов имеет UIStackView?",
            answers: [
                Answer(text: "4", score: 1),
                Answer(text: "2", score: 0),
                Answer(text: "1", score: 0),
                Answer(text: "3", score: 0)
            ]
        ),
        Question(
            topic: .uiKit,
            title: "Какое свойство стек-вью отвечает за вертикальную или горизонтальную ориентацию?",
            answers: [
                Answer(text: "Alignment", score: 0),
                Answer(text: "Axis", score: 1),
                Answer(text: "Spacing", score: 0),
                Answer(text: "Distribution", score: 0)
            ]
        )
    ]
}


            
            


