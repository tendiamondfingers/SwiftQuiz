//
//  Team.swift
//  SwiftQuiz
//
//  Created by Сергей Захаров on 26.04.2023.
//


struct Team {
    let fullName: String
    let avatar: String
    
    static func getTeam() -> [Team] {
        [
            Team(fullName: "Сергей Захаров", avatar: "Sergei"),
            Team(fullName: "Дмитрий Федоров", avatar: "DmitryF"),
            Team(fullName: "Виталий Сабин", avatar: "Vitaly"),
            Team(fullName: "Станислав Сазонов", avatar: "Stanislav"),
            Team(fullName: "Дмитрий Келлер", avatar: "DmitryK")
        ]
        
    }
}
