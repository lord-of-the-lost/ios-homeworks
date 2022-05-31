//
//  TabBarViewController.swift
//  Navigation
//
//  Created by Николай Игнатов on 31.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let firstVC = ProfileViewController()
    let secondVC = FeedViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    private func setupControllers() {
                
        let profileController = UINavigationController(rootViewController: firstVC)
        firstVC.tabBarItem.title = "Профиль"
        firstVC.tabBarItem.image = UIImage(systemName: "profileIMG")
        
        let feedController = UINavigationController(rootViewController: secondVC)
        secondVC.tabBarItem.title = "Лента новостей"
        secondVC.tabBarItem.image = UIImage(systemName: "feedIMG")
        
        viewControllers = [profileController, feedController]
    }
    
}
