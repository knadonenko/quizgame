//
//  QuizLogic.swift
//  QuizGame
//
//  Created by Константин Надоненко on 20.03.2021.
//

import Foundation

struct QuizLogic {
    
    var questionNumber = 0
    var gameDelegate: GameDelegate?
    
    var quiz = [
        Question(q: "Какого цвета кровь улитки?", a: ["Зеленая", "Красная", "Синяя", "Фиолетовая"], correctAnswer: "Зеленая"),
        Question(q: "Какой самый большой орган в теле человека?", a: ["Сердце", "Легкие", "Кишки", "Кожа"], correctAnswer: "Кожа"),
        Question(q: "Какой химический элемент назван в честь злого подземного гнома?", a: ["Гафний", "Кобальт", "Бериллий", "Теллур"], correctAnswer: "Кобальт"),
        Question(q: "Реки с каким названием нет на территории России?", a: ["Шея", "Спина", "Уста", "Палец"], correctAnswer: "Спина"),
        Question(q: "В какой из этих столиц бывших союзных республик раньше появилось метро?", a: ["Тбилиси", "Ереван", "Баку", "Минск"], correctAnswer: "Тбилиси")
    ]
    
    init(_ isRandom: Bool) {
        
        if isRandom {
            quiz.shuffle()
        }
        
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getQuestionAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            gameDelegate?.setGameStatus(true)
        }
    }
    
    func checkAnswer(userAnswer: String) -> Bool {
        return userAnswer == quiz[questionNumber].rightAnswer
    }
    
}
