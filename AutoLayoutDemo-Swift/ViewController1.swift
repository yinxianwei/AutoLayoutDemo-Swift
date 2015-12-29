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

        
        
        
    }
}
