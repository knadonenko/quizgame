//
//  Question.swift
//  QuizGame
//
//  Created by Константин Надоненко on 20.03.2021.
//

import Foundation

struct Question {
    let question: String
    let answers: [String]
    let rightAnswer: String

    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answers = a
        rightAnswer = correctAnswer
    }
}
