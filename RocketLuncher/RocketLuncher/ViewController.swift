//
//  ViewController.swift
//  RocketLuncher
//
//  Created by Muhammad Aamir on 11/08/2017.
//  Copyright © 2017 Muhammad Aamir. All rights reserved.
//

import UIKit
import AVFoundation

 class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var cloudsAndOrange: UIImageView!
    @IBOutlet weak var CloudHolder: UIView!
    @IBOutlet weak var rocketAndStream: UIImageView!
    @IBOutlet weak var PowerButton: UIButton!
    @IBOutlet weak var RocketLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let path = Bundle.main.path(forResource: "hustle-on", ofType: ".wav")!
    let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }
    
    @IBAction func PowerButton(_ sender: Any) {
        CloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        PowerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketAndStream.frame = CGRect(x: 0, y: 140, width: 375, height: 402)}){(finished) in
                self.RocketLbl.isHidden = false
                self.onLbl.isHidden = false
    }}
    
}

