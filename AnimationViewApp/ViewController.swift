//
//  ViewController.swift
//  AnimationViewApp
//
//  Created by Артур Сахбиев on 20.05.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animations = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 40
        
        animationLabel.text = animations.description
        
    }
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationView.animation = animations.preset
        animationView.curve = animations.curve
        animationLabel.text = animations.description
        animationView.delay = CGFloat(animations.delay)
        animationView.force = CGFloat(animations.force)
        animationView.duration = CGFloat(animations.duration)

        animationView.animate()
        animations = Animation.getRandomAnimation()
        
        sender.setTitle("Go to \(animations.preset)", for: .normal)
        
    }
}

