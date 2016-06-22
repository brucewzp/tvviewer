//
//  PlayerViewController.swift
//  tvviewer
//
//  Created by Bruce Wu on 6/21/16.
//  Copyright © 2016 brucewzp. All rights reserved.
//

import UIKit
import MediaPlayer
import AVKit

class PlayerViewController: UIViewController {
    var urlStr = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string:urlStr)
        let player = AVPlayer(URL: url!)
        let playerController = AVPlayerViewController()
        
        playerController.player = player
        self.addChildViewController(playerController)
        self.view.addSubview(playerController.view)
        playerController.view.frame = self.view.frame
        
        player.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
