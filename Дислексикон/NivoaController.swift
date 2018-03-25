//Created by Viktor Kuzmanovon 3/23/18.Copyright © 2018 Code X Team. All rights reserved.

import UIKit
import AVFoundation

class NivoaViewController: UIViewController {

    @IBOutlet weak var buttonNivo1: UIButton!
    @IBOutlet weak var buttonNivo2: UIButton!
    @IBOutlet weak var buttonNivo3: UIButton!
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pozadinaZaNivoa")!)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonNivo3.layer.cornerRadius = 20
        buttonNivo2.layer.cornerRadius = 20
        buttonNivo1.layer.cornerRadius = 20
        
        setupBackButtonInNextController()
    }
    
    // MARK: Setup na button kopce
    
    func setupBackButtonInNextController() {
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: self, action: nil)
        backButton.setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "Arial", size: 17)!], for: UIControlState.normal)
        backButton.tintColor = #colorLiteral(red: 0.3596812487, green: 0.6592496037, blue: 0.8525697589, alpha: 1)
        navigationItem.backBarButtonItem = backButton
    }
    
    // MARK: Generic func playAudio
    
    func playAudio(audioName: String) {
        let urlKnigaAudio = Bundle.main.url(forResource: audioName, withExtension: "m4a")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: urlKnigaAudio!)
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.debugDescription)
        }
        audioPlayer.play()
    }
    
    @IBAction func nivo1ButtonIsPressed(_ sender: UIButton) {
        playAudio(audioName: "nauciJaAzbukata")
        sender.runPulseAnimation()
    }
    
    @IBAction func nivo2ButtonIsPressed(_ sender: UIButton) {
        playAudio(audioName: "sliko-zbor")
        sender.runPulseAnimation()
    }
    
    @IBAction func nivo3ButtonIsPressed(_ sender: UIButton) {
        playAudio(audioName: "nivo3")
        sender.runPulseAnimation()
    }
    
    
}













