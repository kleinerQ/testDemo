//
//  ViewController.swift
//  TestDemo_ChihYen
//
//  Created by Cyen on 2018/8/20.
//  Copyright © 2018年 Cyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {


    @IBOutlet weak var myPageController: UIPageControl!
    @IBOutlet weak var desktopScrollView: UIScrollView!
    var colors:[UIColor] = [UIColor.red, UIColor.green, UIColor.blue]
    var myframe = CGRect(x: 0, y: 0, width: 0, height: 0)
    @IBAction func skipBtn(_ sender: Any) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
   
   
        desktopScrollView.isPagingEnabled = true
   
        desktopScrollView.showsHorizontalScrollIndicator = false
        myPageController.numberOfPages = colors.count
        //print(myPageController.numberOfPages)
        
        desktopScrollView.frame.size.width = screenWidth
        desktopScrollView.frame.size.height = screenHeight
        
        for index in 0 ..< colors.count{
        
            myframe.origin.x = desktopScrollView.frame.size.width * CGFloat(index)
            //print(myframe.size)
            myframe.size = desktopScrollView.frame.size
            
            let view = UIView(frame: myframe)
            //print(view)
            view.backgroundColor = colors[index]
            self.desktopScrollView.addSubview(view)
        }
        desktopScrollView.contentSize = CGSize(width: (desktopScrollView.frame.size.width * CGFloat(colors.count)), height: desktopScrollView.frame.size.height)
        
    
        desktopScrollView.delegate = self
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = desktopScrollView.contentOffset.x / desktopScrollView.frame.size.width
        print(pageNumber)
        myPageController.currentPage = Int(pageNumber)
        print(myPageController.currentPage)
        myPageController.currentPageIndicatorTintColor = colors[myPageController.currentPage]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myPageControl(_ sender: UIPageControl) {

        
    }
    
}

