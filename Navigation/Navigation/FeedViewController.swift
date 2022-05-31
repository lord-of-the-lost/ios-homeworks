//
//  FeedViewController.swift
//  Navigation
//
//  Created by Николай Игнатов on 31.05.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        postButton()
    }
    private func postButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        button.center = view.center
        button.setTitle("Пост", for: .normal)
        button.backgroundColor = .systemCyan
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func tapAction() {
        let post = PostViewController()
        
        post.title = "Пост"
        post.view.backgroundColor = .systemMint
        self.navigationController?.pushViewController(post, animated: true)
        
        let myPost = Post(title: "Новый пост")
        post.navigationItem.title = myPost.title
                
    }
}

