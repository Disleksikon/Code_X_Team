//  Created by Viktor Kuzmanov on 3/23/18.
//  Copyright © 2018 Code X Team. All rights reserved.
import UIKit
import AVFoundation

var audioPlayer: AVAudioPlayer!

class AzbukaViewController: UIViewController {

    var bukviArray = ["а","б","в","г","д","ѓ","е","ж","з","ѕ","и","ј","к","л","љ","м","н","њ","о","п","р","с","т","ќ","у","ф","х","ц","ч","џ","ш"]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.8726844192, green: 0.8627030849, blue: 0.8715023398, alpha: 1)
        navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Азбука"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Kaa ce click na bukva pravi sound
    
    @IBAction func buttonBukvaIsPressed(_ sender: UIButton) {
        
        if sender.tag != 31 {
            sender.playAudio(bukvaName: bukviArray[sender.tag])
            sender.bounceAnimation()
        }
    }
}

