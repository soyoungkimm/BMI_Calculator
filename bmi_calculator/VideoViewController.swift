//
//  VideoViewController.swift
//  bmi_calculator
//
//  Created by 소프트웨어컴퓨터 on 2021/11/29.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnPlayVideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource: "bmi", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
    }
    

}
