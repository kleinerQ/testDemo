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

        let AVC = AViewController()
        AVC.view.backgroundColor = UIColor.orange
        let BVC = BViewController()
        BVC.view.backgroundColor = UIColor.blue
        let CVC = CViewController()
        CVC.view.backgroundColor = UIColor.cyan
        
        AVC.tabBarItem = UITabBarItem(title: "A", image: nil, tag: 0)
        BVC.tabBarItem = UITabBarItem(title: "B", image: nil, tag: 1)
        CVC.tabBarItem = UITabBarItem(title: "C", image: nil, tag: 2)
        
        let controllers = [AVC, BVC, CVC]
        self.viewControllers = controllers
        self.selectedIndex = 2
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
