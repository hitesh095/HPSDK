//
//  AppDelegate.swift
//  Demo
//
//  Created by Hitesh Prajapati on 21/07/20.
//  Copyright © 2020 Hitesh. All rights reserved.
//

import UIKit
import HPSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        HPHelper.log(value: "didFinishLaunchingWithOptions")
        
        if #available(iOS 13.0, *){}
        else{
            setupRootVC()
        }
        
        return true
    }
        
    //MARK:-
    func setupRootVC(){
        //self.window = UIWindow(frame: UIScreen.main.bounds)
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
    }
}

// MARK:- UISceneSession Lifecycle
@available(iOS 13.0, *)
extension AppDelegate{

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
