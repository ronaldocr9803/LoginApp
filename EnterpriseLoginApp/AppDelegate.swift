//
//  AppDelegate.swift
//  EnterpriseLoginApp
//
//  Created by Tung Vu Duc on 11/12/2020.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        return true
//        let viewController = ViewController(nibName: nil, bundle: nil) //ViewController = Name of your controller
//        let viewController = ViewController()
//        let navigationController = UINavigationController(rootViewController: viewController)
//
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.rootViewController = navigationController
//        self.window?.makeKeyAndVisible()
//
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let VC = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        let navigationController = UINavigationController(rootViewController: VC)
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window!.rootViewController = navigationController
        
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//
//        let navigat = UINavigationController()
//        let vcw = ViewController(nibName: "ViewController", bundle: nil)
//
//        // Push the vcw  to the navigat
//        navigat.pushViewController(vcw, animated: false)
//
//        // Set the window’s root view controller
//        self.window!.rootViewController = navigat
//
//        // Present the window
//        self.window!.makeKeyAndVisible()
//
//
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//
//        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        let navigationController = UINavigationController.init(rootViewController: viewController)
//        self.window?.rootViewController = navigationController
//
//        self.window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

