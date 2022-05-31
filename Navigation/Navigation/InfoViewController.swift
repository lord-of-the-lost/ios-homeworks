//
//  InfoViewController.swift
//  Navigation
//
//  Created by Николай Игнатов on 31.05.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGreen
        infoButton()
    }
    private func infoButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        button.center = view.center
        button.setTitle("Нажмите на кнопку", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func tapAction() {
        let alert = UIAlertController(title: "Контрольный вопрос", message: "Вы добровольно нажали на кнопку?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Да", style: .default) { _ in

            self.navigationController?.popViewController(animated: true)
            print("Проблем нет")
        }
        let cancelAction = UIAlertAction(title: "Нет", style: .destructive)
        
        alert.addAction(cancelAction)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
