//
//  FakePhoneCallsViewController.swift
//  Suraksha
//
//  Created by Kopal Kumar on 7/15/20.
//  Copyright © 2020 Kopal Kumar. All rights reserved.
//

import UIKit
import AVFoundation

class FakePhoneCallsViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let sound = Bundle.main.path(forResource: "sound01", ofType: "mp3")
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
        
        
    }
    
    @IBAction func sound01button(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopButtton(_ sender: Any) {
        audioPlayer.stop()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


