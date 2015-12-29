//
//  TableViewController.swift
//  AutoLayoutDemo-Swift
//
//  Created by 尹现伟 on 15/12/29.
//  Copyright © 2015年 尹现伟. All rights reserved.
//

//[http://blog.csdn.net/u014222687/article/details/47360617]
//[http://blog.csdn.net/a330416020/article/details/39964209]

import UIKit

class TableViewController: UITableViewController {

    let dataArray = ["基本使用", "大小相同的view", "按比例布局", "", "", "",]
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        cell.textLabel?.text = dataArray[indexPath.row];

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let clsName = "AutoLayoutDemo_Swift.ViewController\(indexPath.row)"

        if let theClass = NSClassFromString(clsName) as? UIViewController.Type {
            let controller = theClass.init(nibName: nil, bundle: nil)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }

}
