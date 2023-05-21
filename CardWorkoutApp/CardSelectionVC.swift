//
//  CardSelectionVC.swift
//  CardWorkoutApp
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 21/05/2023.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var cards: [UIImage] = []
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
    
}
