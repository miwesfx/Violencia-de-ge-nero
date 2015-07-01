//
//  DesviosViewController.swift
//  Violencia de género
//
//  Created by Miguel on 30/6/15.
//  Copyright (c) 2015 Miguel Pérez. All rights reserved.
//

import UIKit
import MediaPlayer

class DesviosViewController: UIViewController {
   
    var moviePlayer:MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        var url:NSURL = NSURL(string: "http://videos.escuelaprevencionviolencia.es/vg/des-3r.mp4")!
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer.view.frame = CGRect(x: 0, y: 60, width: self.view.frame.size.width, height: 300)
        
        self.view.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = true
        
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
