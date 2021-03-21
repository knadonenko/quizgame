//
//  GameDelegate.swift
//  QuizGame
//
//  Created by Константин Надоненко on 21.03.2021.
//

import Foundation

protocol GameDelegate: class {
    func setNumOfQuestions(_ num: Int)
    func updateScore()
    func getScore() -> Int
    func setGameStatus(_ ended: Bool)
    func didEndGame() -> Bool
}
