//
//  ViewController0.swift
//  AutoLayoutDemo-Swift
//
//  Created by 尹现伟 on 15/12/29.
//  Copyright © 2015年 尹现伟. All rights reserved.
//

import UIKit


class ViewController0: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        self.view.backgroundColor = UIColor.whiteColor()
        
        let view = UIView()
        view.backgroundColor = UIColor.blackColor()
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        //第一种
        
//       let t = NSLayoutConstraint(item: view, attribute:  NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute:  NSLayoutAttribute.Top, multiplier: 1, constant: 90)
//        
//        let l = NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 30)
//        
//        let r = NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Trailing, multiplier: 1, constant: -30)
//       
//        let b = NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: -10)
//       
//        t.active = true
//        l.active = true
//        r.active = true
//        b.active = true
        
        //第二种
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-30-[view]-30-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["view": view]))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-90-[view]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["view": view]))
    }

}
