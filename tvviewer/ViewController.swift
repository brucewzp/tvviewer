//
//  ViewController.swift
//  tvviewer
//
//  Created by Bruce Wu on 6/20/16.
//  Copyright © 2016 brucewzp. All rights reserved.
//

import UIKit


class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    var items = SourceConfig.sources
    var keys:[String] = []
    var tableView: UITableView  =   UITableView()
    override func viewDidLoad() {
        for k in items.keys{
            keys.append(k)
        }
        keys.sortInPlace()
 
        tableView.frame         =   self.view.frame
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
        
//        cell.textLabel?.text = Array(self.items.keys)[indexPath.row]
        cell.textLabel?.text = keys[indexPath.row]
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let p = PlayerViewController()
//        p.urlStr = Array(self.items.values)[indexPath.row]
        p.urlStr = items[keys[indexPath.row]]!
        self.presentViewController(p, animated: true, completion: nil)

    }

}