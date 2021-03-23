//
//  MainViewController.swift
//  QuizGame
//
//  Created by Константин Надоненко on 21.03.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var endedGame = false
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showAlert()
    }

    @IBAction func newGamePressed(_ sender: UIButton) {
        let gameSession = GameSession()
        Game.shared.setupSession(session: gameSession)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch  segue.identifier {
        case "newGame":
            guard let destVC = segue.destination as? GameViewController else { return }
            destVC.gameDelegate = Game.shared.getSession()
            destVC.gameVCDelegate = self
        default:
            break
        }
    }
    
    func showAlert() {
        if endedGame {
            let alert = UIAlertController(title: "Ваш результат!", message: "Вы заработали \(score) очков!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ура!", style: .default, handler: nil))
            self.present(alert, animated: true)
            Game.shared.calculateResult()
            endedGame = false
        }
    }
    
}

extension MainViewController: GameViewControllerDelegate {
    func didEndGame(with result: Int) {
        endedGame = true
        score = result
    }
}
