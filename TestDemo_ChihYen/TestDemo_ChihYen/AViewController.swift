//
//  AViewController.swift
//  TestDemo_ChihYen
//
//  Created by Cyen on 2018/8/20.
//  Copyright © 2018年 Cyen. All rights reserved.
//

import UIKit


class AViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    var contraintStatus = false
    @IBOutlet weak var ViewToTopConstraint: NSLayoutConstraint!
    @IBAction func addBtn(_ sender: Any) {
        if contraintStatus{
            ViewToTopConstraint.constant = 0
            contraintStatus = !contraintStatus
        }else{
            ViewToTopConstraint.constant = 50
            contraintStatus = !contraintStatus
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        

    
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
