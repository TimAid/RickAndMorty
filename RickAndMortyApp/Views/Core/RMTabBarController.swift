//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBars()
    }
    
    func setTabBars() {
        let vc1 = RMCharacterViewController()
        let vc2 = RMLocationViewController()
        let vc3 = RMEpisodesViewController()
        let vc4 = RMSettingsViewController()
        
        vc1.navigationItem.largeTitleDisplayMode = .automatic
        vc2.navigationItem.largeTitleDisplayMode = .automatic
        vc3.navigationItem.largeTitleDisplayMode = .automatic
        vc4.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        let nav4 = UINavigationController(rootViewController: vc4)
        
        
        nav1.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for item in [nav1, nav2, nav3, nav4] {
            item.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
    }
}

