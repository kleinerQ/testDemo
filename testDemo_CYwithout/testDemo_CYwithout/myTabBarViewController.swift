//
//  myTabBarViewController.swift
//  testDemo_CYwithout
//
//  Created by Cyen on 2018/8/21.
//  Copyright © 2018年 Cyen. All rights reserved.
//

import UIKit

class myTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let favoritesVC = CViewController()
        favoritesVC.title = "Favorites"
        favoritesVC.view.backgroundColor = UIColor.orange
        let downloadsVC = CViewController()
        downloadsVC.title = "Downloads"
        downloadsVC.view.backgroundColor = UIColor.blue
        let historyVC = CViewController()
        historyVC.title = "History"
        historyVC.view.backgroundColor = UIColor.cyan
        
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        downloadsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        historyVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        let controllers = [favoritesVC, downloadsVC, historyVC]
        self.viewControllers = controllers
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
