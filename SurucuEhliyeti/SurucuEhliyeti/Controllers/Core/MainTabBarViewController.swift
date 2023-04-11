//
//  MainTabBarController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.02.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController1 = UINavigationController(rootViewController: AnaSayfaViewController())
        let viewController2 = UINavigationController(rootViewController: DersNotlariViewController())
        let viewController3 = UINavigationController(rootViewController: ProfilViewController())
        
        viewController1.tabBarItem.image = UIImage(systemName: "house")
        viewController2.tabBarItem.image = UIImage(systemName: "book")
        viewController3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        viewController1.title = "Testler"
        viewController2.title = "Ders Notları"
        viewController3.title = "Profil"
        
        tabBar.tintColor = .label
        
        setViewControllers([viewController1, viewController2, viewController3], animated: true)

    }
}
