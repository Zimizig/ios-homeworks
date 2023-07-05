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
        firstNC.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "house.fill"), tag: 0)
        return firstNC
    }
    
    func createSecondController() -> UINavigationController {
        let SecondNC = UINavigationController(rootViewController: LogInViewController())

        //SecondNC.navigationBar.tintColor = .white
        //SecondNC.navigationBar.isTranslucent = true
        
        SecondNC.view.backgroundColor = .white
        SecondNC.navigationBar.backgroundColor = .white
        SecondNC.navigationBar.isHidden = true
        
        SecondNC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 1)
        return SecondNC
    }
    
    func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        tabBar.viewControllers = [createFirstController(), createSecondController()]
        tabBar.tabBar.backgroundColor = .white
        return tabBar
    }


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let winScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: winScene)
        window.rootViewController = TestViewController()
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

