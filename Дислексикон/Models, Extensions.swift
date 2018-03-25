//
//  Models, Extensions.swift
//  Дислексикон
//
//  Created by Viktor Kuzmanov on 3/23/18.
//  Copyright © 2018 Code X Team. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class Nivo1Object {
    
    var objectName: String
    var image: UIImage
    var audioName: String
    
    init(objectName: String, image: UIImage, audioName: String) {
        self.objectName = objectName
        self.image = image
        self.audioName = audioName
    }
}

extension UIButton {
    
    // Pulse animation on button
    
    func runPulseAnimation() {
        print("runPulseAnimation runPulseAnimation ")
        let pulseAnimation = CASpringAnimation(keyPath: "transform.scale")
        pulseAnimation.duration = 0.6
        pulseAnimation.fromValue = 0.95
        pulseAnimation.toValue = 1.0
        pulseAnimation.autoreverses = true
        pulseAnimation.repeatCount = 2
        pulseAnimation.initialVelocity = 0.5
        pulseAnimation.damping = 1.0
        
        layer.add(pulseAnimation, forKey: nil)
    }
    
    // mark animation on button
    
    func bounceAnimation() {
        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    // To play audio
    func playAudio(bukvaName: String) {
        
        let urlNaBukvaAudio = Bundle.main.url(forResource: bukvaName, withExtension: "m4a")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: urlNaBukvaAudio)
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.debugDescription)
        }
        
        audioPlayer.play()
    }
}

extension UICollectionViewCell {
    
    // MARK: Pop up text
    func popUpText(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.frame.size.width/2 - 170, y: self.frame.size.height - 200 , width: 350, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 15.0)
        toastLabel.text = message
        toastLabel.alpha = 1
        toastLabel.layer.cornerRadius = 7
        toastLabel.clipsToBounds  =  true
        self.addSubview(toastLabel)
        UIView.animate(withDuration: 2, delay: 0.3, options: .curveEaseIn, animations: { 
            toastLabel.alpha = 0.8
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
}





