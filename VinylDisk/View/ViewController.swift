//
//  ViewController.swift
//  VinylDisk
//
//  Created by Александр Борисов on 26.11.2022.
//

import UIKit

class ViewController: UIViewController, ViewProtocol {

    var interactor: InteractorProtocol?

    var timer: Timer!
    var currentSpeed = Float()
    var degree = Interactor()
    var cgDegree = Interactor()

    var speedSwitch: UISlider = {
        let slider = UISlider()
        slider.maximumValue = ScaleForSlider.maxValue.rawValue
        slider.minimumValue = ScaleForSlider.minValue.rawValue
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
        viewProperties()
        interactor?.onLoadView()
        eventStartButton()
        eventStopButton()
        eventSlider()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupFormView()
    }


    func displayView(_ viewModel: HomeModels.ViewModel) {
        if let isHidden = viewModel.startButtonIsPressed {
            startButton.isHidden = isHidden
        }

        if let isHidden = viewModel.stopButtonIsPressed {
            stopButton.isHidden = isHidden
        }

        if let newSpeed = viewModel.newSpeedValue {
            if newSpeed != currentSpeed {
                currentSpeed = newSpeed
            }
        }
    }
}

