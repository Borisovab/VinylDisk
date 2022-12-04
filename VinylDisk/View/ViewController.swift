//
//  ViewController.swift
//  VinylDisk
//
//  Created by Александр Борисов on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer!
    var degree = CGFloat(Double.pi / 180)
    var changedSpeed = 0
    var flag = false

    var speedSwitch: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 20
        slider.value = 5
        return slider
    }()

    var rotatedView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = view.bounds.width / 2
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.systemPink.withAlphaComponent(0.1).cgColor
        return view
    }()

    var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        return button
    }()

    var stopButton: UIButton = {
        let button = UIButton()
        button.setTitle("Stop", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        hiddenButtons()
        setupSlider()
        setupStartButton()
        setupStopButton()



    }




    

}

