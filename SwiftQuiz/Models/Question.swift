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
    
    static func getQuestions() -> [Question] {
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
            ),
            Question(
                topic: .collections,
                title: "Сколько основных типов коллекций  существует в Swift?",
                answers: [
                    Answer(text: "1", score: 0),
                    Answer(text: "2", score: 0),
                    Answer(text: "3", score: 1),
                    Answer(text: "4", score: 0)
                ]
            ),
            Question(
                topic: .collections,
                title: "Какой метод удаляет и возвращает последний элемент массива?",
                answers: [
                    Answer(text: "removeLast()", score: 1),
                    Answer(text: "dropLast()", score: 0),
                    Answer(text: "remove(_ :at:)", score: 0),
                    Answer(text: "deleteLast()", score: 0)
                ]
            ),
            Question(
                topic: .collections,
                title: "Что используют для доступа к элементам коллекции?",
                answers: [
                    Answer(text: "Значение элемента", score: 0),
                    Answer(text: "Ключевое слово", score: 0),
                    Answer(text: "Индекс", score: 1),
                    Answer(text: "Делегат", score: 0)
                ]
            ),
            Question(
                topic: .collections,
                title: "... - неупорядоченная коллекция, хранящая пары ключ-значение.",
                answers: [
                    Answer(text: "Массив", score: 0),
                    Answer(text: "Словарь", score: 1),
                    Answer(text: "Множество", score: 0),
                    Answer(text: "Структура", score: 0)
                ]
            ),
            Question(
                topic: .collections,
                title: "Можно ли изменить множество, если при инициализации мы присвоили его константе?",
                answers: [
                    Answer(text: "Можно добавить элементы", score: 0),
                    Answer(text: "можно только удалять элементы", score: 0),
                    Answer(text: "Нельзя", score: 1),
                    Answer(text: "Нет правильного ответа", score: 0)
                ]
            ),
            Question(
                topic: .screenTransition,
                title: "При использовании segue Present Modally, какой необходимо выбрать параметр Presentation, чтобы отображение было на весь экран?",
                answers: [
                    Answer(text: "Page Sheet", score: 0),
                    Answer(text: "Full Screen", score: 1),
                    Answer(text: "Current Context", score: 0),
                    Answer(text: "Same As Destination", score: 0)
                ]
            ),
            Question(
                topic: .screenTransition,
                title: "Что необходимо использовать, чтобы убрать отображение кнопки Back в navigation item, при использование segue Show?",
                answers: [
                    Answer(text: "hidesBackButton", score: 1),
                    Answer(text: "struct", score: 0),
                    Answer(text: "removeButton()", score: 0),
                    Answer(text: "нельзя убрать кнопку", score: 0)
                ]
            ),
            Question(
                topic: .screenTransition,
                title: "При использовании prepare(for segue:), что означает destination?",
                answers: [
                    Answer(text: "Нет правильного ответа", score: 0),
                    Answer(text: "Место назначения", score: 1),
                    Answer(text: "Точка возврата", score: 0),
                    Answer(text: "Рекурсия", score: 0)
                ]
            ),
            Question(
                topic: .screenTransition,
                title: "Какой segue используется для передачи информации на предыдущий экран?",
                answers: [
                    Answer(text: "prepare", score: 0),
                    Answer(text: "show", score: 0),
                    Answer(text: "unwind", score: 1),
                    Answer(text: "push", score: 0)
                ]
            ),
            
            // келлер
            Question(
                topic: .classes,
                title: "Что из перечисленного является ссылочным типом?",
                answers: [
                    Answer(text: "Свойства", score: 0),
                    Answer(text: "Структуры", score: 0),
                    Answer(text: "Классы", score: 1),
                    Answer(text: "Перечисления", score: 0)
                ]
            ),
            Question(
                topic: .classes,
                title: "Как объявляется класс?",
                answers: [
                    Answer(text: "С помощью ключевого слова enum", score: 0),
                    Answer(text: "С помощью ключевого слова struct", score: 0),
                    Answer(text: "C помощью ключевого слова class", score: 1),
                    Answer(text: "С помощью ключевого слова array", score: 0)
                ]
            ),
            Question(
                topic: .classes,
                title: "Что можно объявить внутри классов для добавления функциональности?",
                answers: [
                    Answer(text: "Константы и переменные", score: 0),
                    Answer(text: "Свойства и методы", score: 1),
                    Answer(text: "Комментарии", score: 0),
                    Answer(text: "Функции и замыкания", score: 0)
                ]
            ),
            Question(
                topic: .classes,
                title: "Чтобы создать экземпляр класса, какой синтаксис необходимо использовать?",
                answers: [
                    Answer(text: "(Name)()", score: 0),
                    Answer(text: "Name = ()", score: 0),
                    Answer(text: "Name()", score: 1),
                    Answer(text: "name = []", score: 0)
                ]
            ),
            Question(
                topic: .classes,
                title: "Как традиционно называют экземпляр класса в ООП?",
                answers: [
                    Answer(text: "Таргет", score: 0),
                    Answer(text: "Экземпляр", score: 0),
                    Answer(text: "Объект", score: 1),
                    Answer(text: "Структура", score: 0)
                ]
            ),
            Question(
                topic: .lifeCircle,
                title: "В каком из этих методов мы не обращаемся с суперклассу?",
                answers: [
                    Answer(text: "viewDidLoad", score: 0),
                    Answer(text: "viewDidAppear", score: 0),
                    Answer(text: "viewWillLayoutSubviews", score: 1),
                    Answer(text: "updateWillConstraints", score: 0)
                ]
            ),
            Question(
                topic: .lifeCircle,
                title: "Какой из этих методов жизненного цикла отработает первым?",
                answers: [
                    Answer(text: "viewWillLayoutSubviews", score: 0),
                    Answer(text: "viewDidAppear", score: 0),
                    Answer(text: "viewDidLoad", score: 1),
                    Answer(text: "updateWillConstraints", score: 0)
                ]
            ),
            Question(
                topic: .lifeCircle,
                title: "В каком методе мы можем инициализировать объекты  и переменные, которые должны жить весь жизненный цикл?",
                answers: [
                    Answer(text: "deinit()", score: 0),
                    Answer(text: "awakeFromNib()", score: 0),
                    Answer(text: "viewDidLoad()", score: 1),
                    Answer(text: "viewWillTransition()", score: 0)
                ]
            ),
            Question(
                topic: .lifeCircle,
                title: "Этот метод отработает последним при закрытии экрана...",
                answers: [
                    Answer(text: "viewWillTransition()", score: 0),
                    Answer(text: "viewDidAppear()", score: 0),
                    Answer(text: "deinit()", score: 1),
                    Answer(text: "viewDidLoad()", score: 0)
                ]
            ),
            Question(
                topic: .lifeCircle,
                title: "После какого метода у нас начнут устанавливаться свойства и атлеты нашего контроллера?",
                answers: [
                    Answer(text: "После loadView()", score: 0),
                    Answer(text: "После deinit()", score: 0),
                    Answer(text: "После awakeFromNib()", score: 1),
                    Answer(text: "После viewDidLoad()", score: 0)
                ]
            ),
            Question(
                topic: .functions,
                title: "Каким ключевым словом обозначается функция?",
                answers: [
                    Answer(text: "closure", score: 0),
                    Answer(text: "method", score: 0),
                    Answer(text: "function", score: 0),
                    Answer(text: "func", score: 1)
                ]
            ),
            Question(
                topic: .functions,
                title: "Сколько действий в идеале должна выполнять функция?",
                answers: [
                    Answer(text: "Все возможные", score: 0),
                    Answer(text: "Как можно меньше", score: 0),
                    Answer(text: "Одно", score: 1),
                    Answer(text: "Как минимум пять", score: 0)
                ]
            ),
            Question(
                topic: .functions,
                title: "Для чего используются аргументы в функциях?",
                answers: [
                    Answer(text: "Для читабельности", score: 1),
                    Answer(text: "Без них код не скомпилируется", score: 0),
                    Answer(text: "Для передачи данных", score: 0),
                    Answer(text: "Так захотел Стив Джобс", score: 0)
                ]
            ),
            Question(
                topic: .functions,
                title: "Безымянные функции, написанные в облегчённом синтаксисе это:",
                answers: [
                    Answer(text: "Параметры", score: 0),
                    Answer(text: "Ноунеймы", score: 0),
                    Answer(text: "Методы", score: 0),
                    Answer(text: "Замыкания", score: 1)
                ]
            ),
            Question(
                topic: .functions,
                title: "Должна ли функция возвращать какое-либо значения?",
                answers: [
                    Answer(text: "Всегда", score: 0),
                    Answer(text: "Не обязательно", score: 1),
                    Answer(text: "Только внутри класса", score: 0),
                    Answer(text: "Только внутри структуры", score: 0)
                ]
            ),
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
    }
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


            
            


