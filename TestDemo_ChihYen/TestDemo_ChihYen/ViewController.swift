//
//  ViewController.swift
//  TestDemo_ChihYen
//
//  Created by Cyen on 2018/8/20.
//  Copyright © 2018年 Cyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView1: UIView!
    @IBAction func skipBtn(_ sender: Any) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myPageControl(_ sender: UIPageControl) {
        if sender.currentPage == 0{
            myImageView1.backgroundColor = .red
        }else if sender.currentPage == 1 {
            myImageView1.backgroundColor = .green
        }else{
            myImageView1.backgroundColor = .yellow
            
        }
        
    }
    
}

