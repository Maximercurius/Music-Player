//
//  MainTabBarController.swift
//  Music Player
//
//  Created by Makarov_Maxim on 21.05.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tabBar.tintColor = UIColor.darkGray
        
        
        viewControllers = [
            generateViewController(rootViewController: SearchViewController(), image: UIImage(imageLiteralResourceName: "search"), title: "Search"),
            generateViewController(rootViewController: ViewController(), image: UIImage(imageLiteralResourceName: "library"), title: "Library")
        ]
    }
    private func generateViewController(rootViewController: UIViewController, image: UIImage, title: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewController.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        
        return navigationVC
    }
}
