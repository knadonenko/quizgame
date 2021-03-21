//
//  ScoreStorage.swift
//  QuizGame
//
//  Created by Константин Надоненко on 21.03.2021.
//

import Foundation

class ScoreStorage {
    
    private typealias Memento = Data
    
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    private let key = "game"
    
    func saveScoreRecords(_ records: [Record]) {
        do {
            let data: Memento = try encoder.encode(records)
            UserDefaults.standard.setValue(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func loadResults() -> [Record] {
        guard let data: Memento = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        do {
            return try decoder.decode([Record].self, from: data)
        } catch {
            print(error.localizedDescription)
        }
        return []
    }
    
}
