//
//  View+animation.swift
//  VinylDisk
//
//  Created by Александр Борисов on 30.11.2022.
//

import Foundation
import SnapKit

extension ViewController{

    func setupStartButton() {
        startButton.addTarget(self, action: #selector(startRotate), for: .touchUpInside)
    }

    @objc func startRotate() {
        interactor?.pressStartButton()
//        startButton.isHidden = true
        stopButton.isHidden = false

        timer = Timer.scheduledTimer(timeInterval: 0.0, target: self, selector: #selector(run), userInfo: nil, repeats: true)

    }

    @objc func run() {

//        UIView.animate(withDuration: 0.0, delay: 0, options: .curveLinear) {
//
//            self.rotatedView.transform = CGAffineTransform(rotationAngle: Singleton.shared.degree)
//        } completion: { [weak self] finished in
//            guard let self = self
//            else { return }
//            Singleton.shared.degree += CGFloat(Double.pi / 180) * CGFloat(Double(self.currentSpeed) / 180)
//        }
    }

    func setupStopButton() {
        stopButton.addTarget(self, action: #selector(stopRotate), for: .touchUpInside)
    }

    @objc func stopRotate() {
        interactor?.pressStopButton()
        timer.invalidate()

    }

    func setupSlider() {
        speedSwitch.addTarget(self, action: #selector(changeSpeed(_:)), for: .valueChanged)
    }

    @objc func changeSpeed(_ sender: UISlider) {

        interactor?.setSliderValue(speed: Float(sender.value))
    }

}
