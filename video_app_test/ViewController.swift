//
//  ViewController.swift
//  video_app_test
//
//  Created by Essam Mohamed on 10/31/18.
//  Copyright © 2018 Hmaserv. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //
    // PROPERTIES
    //
    
    let thePlayer: VLCMediaPlayer =
    {
        let player = VLCMediaPlayer()
        return player
    }()
    
    //
    // OUTLETS
    //
    
    @IBOutlet weak var thePlayerView: UIView!
    
    //
    // CLASS METHODS
    //
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupthePlayer()
    }
    
    //
    // DEFINED FUNCTIONS
    //
    
    func setupthePlayer()
    {
        let streamURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
        let theMedia = VLCMedia(url: streamURL)
        
        thePlayer.media = theMedia
        thePlayer.drawable = thePlayerView
        
        thePlayer.play()
    }
    

} // end of class






