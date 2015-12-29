//
//  ViewController1.swift
//  AutoLayoutDemo-Swift
//
//  Created by 尹现伟 on 15/12/29.
//  Copyright © 2015年 尹现伟. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = UIView()
        let view2 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor.blackColor()
        view2.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(view1)
        self.view.addSubview(view2)

        self.view.backgroundColor = UIColor.whiteColor()
        
        let leading = 30
        let trailing = 30
        let metrics = ["leading":leading, "trailing":trailing]
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-90-[view1(==100)]-20-[view2(view1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["view1": view1, "view2":view2]))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-leading-[view1]-trailing-|", options: NSLayoutFormatOptions(), metrics: metrics, views: ["view1": view1]))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-leading-[view2]-trailing-|", options: NSLayoutFormatOptions(), metrics: metrics, views: ["view1": view1, "view2":view2]))
        
    }
}
