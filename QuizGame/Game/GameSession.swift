//
//  GameSession.swift
//  QuizGame
//
//  Created by Константин Надоненко on 20.03.2021.
//

import Foundation

class GameSession: GameDelegate {
    
    var totalResult: Int = 0
    var numberOfQuestions: Int = 0
    var gameEnded = false

    func setNumOfQuestions(_ num: Int) {
        numberOfQuestions = num
    }
    
    func updateScore() {
        totalResult += 1
        print("Total \(totalResult)")
    }
    
    func setGameStatus(_ ended: Bool) {
        gameEnded = ended
    }
        
    func didEndGame() -> Bool {
        return gameEnded
    }
    
    func getScore() -> Int {
        return totalResult
    }
    
}
