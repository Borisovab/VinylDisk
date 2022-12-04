//
//  View+animation.swift
//  VinylDisk
//
//  Created by Александр Борисов on 30.11.2022.
//

import Foundation
import SnapKit

extension ViewController{


    func hiddenButtons() {
        startButton.isHidden = false
        stopButton.isHidden = true
    }

    func setupStartButton() {
        startButton.addTarget(self, action: #selector(startRotate), for: .touchUpInside)
    }

    @objc func startRotate() {
        startButton.isHidden = true
        stopButton.isHidden = false

        timer = Timer.scheduledTimer(timeInterval: 0.0, target: self, selector: #selector(run), userInfo: nil, repeats: true)

    }

    @objc func run() {

        UIView.animate(withDuration: 0.0, delay: 0, options: .curveLinear) {
            self.rotatedView.transform = CGAffineTransform(rotationAngle: self.degree)
        } completion: { [weak self] finished in
            guard let self = self else { return }
            self.degree += CGFloat(Double.pi / 180) * CGFloat(Double(self.changedSpeed) / 180)
        }
    }

    func setupStopButton() {
        stopButton.addTarget(self, action: #selector(stopRotate), for: .touchUpInside)
    }

    @objc func stopRotate() {
        timer.invalidate()
        startButton.isHidden = false
        stopButton.isHidden = true
    }

    func setupSlider() {
        speedSwitch.addTarget(self, action: #selector(changeSpeed(_:)), for: .valueChanged)
    }

    @objc func changeSpeed(_ sender: UISlider) {
        changedSpeed = Int(sender.value)
        print("Slider and changedSpeed changing to \(changedSpeed)")
    }


    
}
