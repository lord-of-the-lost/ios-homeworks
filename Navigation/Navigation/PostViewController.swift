//
//  PostViewController.swift
//  Navigation
//
//  Created by Николай Игнатов on 31.05.2022.
//

import UIKit

struct Post {
    var title: String
}

class PostViewController: UIViewController {
    
    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        makeBarItem()
    }
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Информация", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func tapAction() {
        let vc = InfoViewController()
        vc.title = "Информация"
        present(vc, animated: true)
    }
}

