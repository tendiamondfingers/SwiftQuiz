//
//  Team.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 26.04.2023.
//

struct Team {
    let name: String
    let surname: String
    let image: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getTeam() -> [Team] {
        [
            Team(
                name: "Сергей",
                surname: "Захаров",
                image: "Sergei"
            ),
            Team(
                name: "Дмитрий",
                surname: "Келлер",
                image: "DmitryK"
            ),
            Team(
                name: "Виталий",
                surname: "Сабин",
                image: "Vitaly"
            ),
            Team(
                name: "Станислав",
                surname: "Сазонов",
                image: "Stanislav"
            ),
            Team(
                name: "Дмитрий",
                surname: "Федоров",
                image: "DmitryF"
            )
        ]
    }
}
