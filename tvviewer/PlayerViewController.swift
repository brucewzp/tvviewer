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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string:"http://61.189.255.152/live.aishang.ctlcdn.com/00000110240127_1/encoder/0/playlist.m3u8")
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
