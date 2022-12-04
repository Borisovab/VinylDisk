//
//  ViewController.swift
//  VinylDisk
//
//  Created by Александр Борисов on 26.11.2022.
//

import UIKit

class ViewController: UIViewController, PresenterProtocol {

    private enum ScaleForSlider: Float {
        case minValue = 0
        case maxValue = 20
        case startValue = 5
    }

    enum ViewConstraints: Float {
        case Height = 250
        case CenterY = -200
    }

    enum ButtonConstraints: Float {
        case Width = 80
        case Height = 60
        case Top = 200
    }

    enum SpeedSwitchConstraints: Float {
        case Height = 30
        case Leading = 25
        case Top = 100
    }

    var timer: Timer!
    var degreeView = Presenter()
    var changedSpeedView = Presenter()

    var speedSwitch: UISlider = {
        let slider = UISlider()
        slider.maximumValue = ScaleForSlider.maxValue.rawValue
        slider.minimumValue = ScaleForSlider.minValue.rawValue
        slider.value = ScaleForSlider.startValue.rawValue
        return slider
    }()

    var rotatedView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemTeal
        return view
    }()

    var startButton: UIButton = {
        let button = UIButton()
        button.setTitle(Singleton.shared.startNameButton, for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    var stopButton: UIButton = {
        let button = UIButton()
        button.setTitle(Singleton.shared.stopNameButton, for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        hiddenButtons()
        setupSlider()
        setupStartButton()
        setupStopButton()

        changedSpeedView.changedSpeed = ScaleForSlider.startValue.rawValue

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupFormView()
    }
}

