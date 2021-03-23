//
//  Game.swift
//  QuizGame
//
//  Created by Константин Надоненко on 20.03.2021.
//

import Foundation

class Game {
    
    private var gameSession: GameSession?
    
    static var shared = Game()
    
    var results: [Record] = [] {
        didSet {
            scoreStorage.saveScoreRecords(results)
        }
    }
    
    var scoreStorage = ScoreStorage()
    
    private init() {
        results = scoreStorage.loadResults()
    }
    
    func setupSession(session: GameSession) {
        gameSession = session
    }
    
    func getSession() -> GameSession {
        return gameSession!
    }
    
    func calculateResult() {
        if let game = gameSession {
            var result = Float(game.totalResult) / Float(game.numberOfQuestions)
            result *= 100.0
            
            let date : Date = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM dd, yyyy HH MM"
            let todaysDate = dateFormatter.string(from: date)
            
            let record = Record(date: todaysDate, score: result)
            results.append(record)
            gameSession = nil
            print("RESULTS: \(results)")
        }
    }
    
}
