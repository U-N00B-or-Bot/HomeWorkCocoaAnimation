//
//  ViewController.swift
//  HomeWorkAnimationSpring
//
//  Created by Bulat Serimbetov on 12.01.2022.
//
import Spring


class ViewController: UIViewController {
    

    @IBOutlet weak var animationValueLabel: UILabel!
    @IBOutlet weak var curveValueLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var delayValueLabel: UILabel!
    @IBOutlet weak var runBtn: SpringButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var springAnimationView: SpringView!
    
    
    private var currentElement: String?
    
    @IBAction func springAnimationRun(_ sender: SpringButton) {
            
       let animationModel = AnimationModel.getAnimationModel()
        let firstPressedRandom = FirstPressed.getFirstPressedRandomValueForSpringAnimationView()
        
        
        if Security.shared.theButtonWasPressed == false{
            currentElement = firstPressedRandom.firstPressed
        }
       
        label.text = "current animation: "+currentElement!
        animationValueLabel.text = currentElement!
        durationValueLabel.text = String(round(100 * animationModel.durationValue)/100)
        curveValueLabel.text = animationModel.curveCurrElement
        forceValueLabel.text = String(round(100 * animationModel.forceValue)/100)
        delayValueLabel.text = String(round(100 * animationModel.delayValue)/100)
        sender.setTitle("next: " + animationModel.nextElement, for: .normal)
        sender.animation = "swing"
        sender.duration = 1
        sender.animate()
        
        springAnimationView.animation = currentElement!
        springAnimationView.curve = animationModel.curveCurrElement
        springAnimationView.force = animationModel.forceValue
        springAnimationView.duration = animationModel.durationValue
        springAnimationView.delay = animationModel.delayValue
        springAnimationView.animate()
        currentElement = animationModel.nextElement
        
        Security.shared.theButtonWasPressed = true
    }
    
    @IBAction func offButton(_ sender: UIBarButtonItem) {
        runBtn.setTitle("Run animation", for: .normal)
        label.text = "Spring animation"
        animationValueLabel.text = "Value"
        durationValueLabel.text = "Value"
        curveValueLabel.text = "Value"
        forceValueLabel.text = "Value"
        delayValueLabel.text = "Value"
       
        
        Security.shared.theButtonWasPressed = false
        
    }
}

