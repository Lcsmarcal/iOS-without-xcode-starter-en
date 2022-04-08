//
//  SceneDelegate.swift
//  VCA
//
//  Created by Lucas Marçal Fernandes on 9/2/20.
//  Copyright © 2020 Lucas Marçal Fernandes. All rights reserved.
//

import UIKit
#if canImport(VeryCoolLibrary)
import VeryCoolLibrary
#endif

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        

        let label = UILabel(frame: .zero)
        label.textColor = .white
        label.text = "This app was built without Xcode Build System"
        viewController.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor).isActive = true
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

class SomeView: UIView {}

extension UIView {
    class func fromNib<T: UIView>() -> T? {
        let nibName = String(describing: T.self)
        guard (Bundle.main.path(forResource: nibName,
                                ofType: "nib") != nil) else { return nil }
        let view = Bundle.main.loadNibNamed(nibName,
                                            owner: nil,
                                            options: nil)?.first as? T
        view?.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}