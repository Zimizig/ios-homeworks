//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Роман on 02.02.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?

    func createFirstController() -> UINavigationController {
        let firstNC = UINavigationController(rootViewController: FeedViewController())
        firstNC.tabBarItem = UITabBarItem(title: "Новости", image: UIImage(systemName: "lineweight"), tag: 0)
        return firstNC
    }
    
    func createSecondController() -> UINavigationController {
        let SecondNC = UINavigationController(rootViewController: ProfileViewController())
        SecondNC.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.crop.circle.fill"), tag: 1)
        return SecondNC
    }
    
    func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        tabBar.viewControllers = [createFirstController(), createSecondController()]
        tabBar.tabBar.backgroundColor = .systemGray
        return tabBar
    }


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let winScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: winScene)
        window.rootViewController = createTabBar()
        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

