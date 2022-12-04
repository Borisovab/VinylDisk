//
//  View + setup.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

extension ViewController {

    

    func setupView() {
        rotatedView.backgroundColor = .systemTeal

        view.addSubview(rotatedView)

        rotatedView.snp.makeConstraints{ make in
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-200)
        }
    }

    func setupStartButton() {
        startButton.backgroundColor = .blue
        view.addSubview(startButton)

        startButton.snp.makeConstraints{ make in
            make.width.equalTo(80)
            make.height.equalTo(60)
            make.centerX.equalToSuperview()
            make.top.equalTo(rotatedView.snp.bottom).offset(200)
        }

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
        stopButton.backgroundColor = .blue
        view.addSubview(stopButton)

        stopButton.snp.makeConstraints{ make in
            make.width.equalTo(80)
            make.height.equalTo(60)
            make.centerX.equalToSuperview()
            make.top.equalTo(rotatedView.snp.bottom).offset(200)
        }

        stopButton.addTarget(self, action: #selector(stopRotate), for: .touchUpInside)
    }

    @objc func stopRotate() {
        timer.invalidate()
        startButton.isHidden = false
        stopButton.isHidden = true
    }

    func setupSlider() {
        view.addSubview(speedSwitch)

        speedSwitch.snp.makeConstraints{ make in
            make.height.equalTo(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.top.equalTo(rotatedView.snp.bottom).offset(100)
        }
        speedSwitch.addTarget(self, action: #selector(changeSpeed(_:)), for: .valueChanged)
    }

    @objc func changeSpeed(_ sender: UISlider) {
        changedSpeed = Int(sender.value)
        print("Slider and changedSpeed changing to \(changedSpeed)")
    }

}
