//
//  ViewController.swift
//  TrafficLight
//
//  Created by Кирилл Слюсарь on 24.04.2023.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yollowLight: UIView!
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var startButton: UIButton!

    private var currentLight = Currentlight.yellow
    private let lifhtIsOn : CGFloat = 1
    private let lightIsOff :  CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        startButton.layer.cornerRadius = 10
        
        greenLight.alpha = lightIsOff
        yollowLight.alpha = lightIsOff
        redLight.alpha = lightIsOff
        
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        yollowLight.layer.cornerRadius = yollowLight.frame.width / 2
        redLight.layer.cornerRadius = redLight.frame.width / 2
        
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "Start" {
        
        }
        
        switch currentLight {
        case .green:
            yollowLight.alpha = lightIsOff
            redLight.alpha = lightIsOff
            currentLight = .green
            
        case .yellow:
            yollowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOff
            currentLight = .yellow
            
        case .red:
            greenLight.alpha = lightIsOff
            yollowLight.alpha = lightIsOff
            currentLight = .red
            
            
        }
    }
    
    
}
//MARK: - Currentlight
    
    extension ViewController {
        private enum Currentlight {
            case green, yellow, red
        }
    }
    

