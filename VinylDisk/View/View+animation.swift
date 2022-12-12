//
//  View+animation.swift
//  VinylDisk
//
//  Created by Александр Борисов on 30.11.2022.
//

import Foundation
import SnapKit

extension ViewController{

    func eventStartButton() {
        startButton.addTarget(
            self,
            action: #selector(startButtonPressed),
            for: .touchUpInside)
    }

    @objc func startButtonPressed() {
        interactor?.pressStartButton()

        timer = Timer.scheduledTimer(
            timeInterval: 0.0,
            target: self,
            selector: #selector(startRotate),
            userInfo: nil, repeats: true)

    }

    @objc func startRotate() {
        UIView.animate(withDuration: 0.0, delay: 0, options: .curveLinear) {
            self.rotatedView.transform = CGAffineTransform(rotationAngle: self.degree)
        } completion: { [weak self] finished in
            guard let self = self
            else { return }
            self.degree += CGFloat(Double.pi / 180) * CGFloat(Double(self.currentSpeed) / 180)
        }
    }

    func eventStopButton() {
        stopButton.addTarget(self, action: #selector(stopButtonPressed), for: .touchUpInside)
    }

    @objc func stopButtonPressed() {
        interactor?.pressStopButton()
        timer.invalidate()

    }

    func eventSlider() {
        speedSwitch.addTarget(self, action: #selector(changeSpeed(_:)), for: .valueChanged)
    }

    @objc func changeSpeed(_ sender: UISlider) {
        interactor?.setSliderValue(speed: Float(sender.value))
    }

}
