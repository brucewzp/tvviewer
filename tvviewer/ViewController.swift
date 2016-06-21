//
//  ViewController.swift
//  tvviewer
//
//  Created by Bruce Wu on 6/20/16.
//  Copyright © 2016 brucewzp. All rights reserved.
//

import UIKit


class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    var items: [String] = ["Viper", "X", "Games"]
    var tableView: UITableView  =   UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.frame         =   CGRectMake(0, 50, 320, 200);
        tableView.delegate      =   self
        tableView.dataSource    =   self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(tableView)


    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        //实例化一个登陆界面
        let p = PlayerViewController()
        //从下弹出一个界面作为登陆界面，completion作为闭包，可以写一些弹出loginView时的一些操作
        self.presentViewController(p, animated: true, completion: nil)

    }
}