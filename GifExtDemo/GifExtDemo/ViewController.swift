//
//  ViewController.swift
//  GifExtDemo
//
//  Created by Xue Yu on 4/2/17.
//  Copyright © 2017 XueYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var localImageView: UIImageView!
    @IBOutlet weak var webImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // create animated UIImage
        let localGifURL = Bundle.main.url(forResource: "laugh", withExtension: "gif")
        let gifFile = UIImage.gif(url:localGifURL!)
        localImageView.contentMode = .scaleAspectFit
        localImageView.image = gifFile
        
        // or just load from web
        let webGifURL = URL(string: "https://media.giphy.com/media/3og0IuvANdUUmpVeA8/giphy.gif")
        webImageView.loadGif(url: webGifURL!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

