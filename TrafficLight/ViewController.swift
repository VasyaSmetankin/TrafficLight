//
//  ViewController.swift
//  TrafficLight
//
//  Created by KooK MeeM on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    var count = 1
    @IBOutlet var redLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLightView.layer.cornerRadius = 41
        yellowLightView.layer.cornerRadius = 41
        redLightView.layer.cornerRadius = 41
        trafficLightButton.configuration =  buttonConfiguration("tap to begin")
        
    }
    @IBAction func TrafficButtonDidTapped() {
        trafficLightButton.configuration = buttonConfiguration("tap to switch color")
        switch count {
        case 1:
            greenLightView.alpha = 0.5
            redLightView.alpha = 1
            count += 1
        case 2:
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
            count += 1
        case 3:
            redLightView.alpha = 0.5
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
            count = 1
        default:
            break
                
            }
            
        
            
        }
        
        
        
        
        
        
    }
    
    private func buttonConfiguration(_ title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title

        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        return buttonConfiguration
    }
    private func LightViewConfig() {
        
    }


