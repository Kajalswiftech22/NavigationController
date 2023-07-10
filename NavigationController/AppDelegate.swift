//
//  AppDelegate.swift
//  NavigationController
//
//  Created by intern on 4/24/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        self.setUpInitialVC()
        self.setUpAppearance()
        
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
    

    func setUpInitialVC(){
        if window == nil{
            window = UIWindow(frame: UIScreen.main.bounds)
        }
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let initialVC = storyboard.instantiateViewController(withIdentifier: "buttonViewController") as! buttonViewController
            let initialNav = UINavigationController(rootViewController: initialVC)
            
            self.window?.rootViewController = initialNav
            self.window?.makeKeyAndVisible()
//            setUpAppearance()
        }
    
    func setUpAppearance(){
            //UINavigationAppearance

            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor.white
            //appearance.shadowColor = UIColor.clear
            //appearance.shadowImage = UIImage()
            appearance.backButtonAppearance.normal.titlePositionAdjustment = UIOffset(horizontal: -200, vertical: 0)
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15.0)]
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().tintColor = UIColor.black

    //        let tabappearance = UITabBarAppearance()
//            UITabBar.appearance().unselectedItemTintColor = UIColor.white
//            UITabBar.appearance().tintColor = UIColor.blue
//            UITabBar.appearance().backgroundColor = UIColor.red

        }



}

