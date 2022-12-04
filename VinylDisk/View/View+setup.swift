//
//  View + setup.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

extension ViewController {

    func setupConstraints() {
        [speedSwitch, rotatedView, startButton, stopButton].forEach{ box in
            view.addSubview(box)
        }

        rotatedView.snp.makeConstraints{ make in
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-200)
        }

        startButton.snp.makeConstraints{ make in
            make.width.equalTo(80)
            make.height.equalTo(60)
            make.centerX.equalToSuperview()
            make.top.equalTo(rotatedView.snp.bottom).offset(200)
        }

        stopButton.snp.makeConstraints{ make in
            make.width.equalTo(80)
            make.height.equalTo(60)
            make.centerX.equalToSuperview()
            make.top.equalTo(rotatedView.snp.bottom).offset(200)
        }

        speedSwitch.snp.makeConstraints{ make in
            make.height.equalTo(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.top.equalTo(rotatedView.snp.bottom).offset(100)
        }
    }




}
