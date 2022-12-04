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
            make.width.height.equalTo(ViewConstraints.Height.rawValue)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(ViewConstraints.CenterY.rawValue)
        }
        
        startButton.snp.makeConstraints{ make in
            make.width.equalTo(ButtonConstraints.Width.rawValue)
            make.height.equalTo(ButtonConstraints.Height.rawValue)
            make.centerX.equalToSuperview()
            make.top.equalTo(rotatedView.snp.bottom).offset(ButtonConstraints.Top.rawValue)
        }
        
        stopButton.snp.makeConstraints{ make in
            make.width.equalTo(ButtonConstraints.Width.rawValue)
            make.height.equalTo(ButtonConstraints.Height.rawValue)
            make.centerX.equalToSuperview()
            make.top.equalTo(rotatedView.snp.bottom).offset(ButtonConstraints.Top.rawValue)
        }
        
        speedSwitch.snp.makeConstraints{ make in
            make.height.equalTo(SpeedSwitchConstraints.Height.rawValue)
            make.leading.trailing.equalToSuperview().inset(SpeedSwitchConstraints.Leading.rawValue)
            make.top.equalTo(rotatedView.snp.bottom).offset(SpeedSwitchConstraints.Top.rawValue)
        }
    }
    
    func setupFormView() {
        rotatedView.layer.cornerRadius = rotatedView.bounds.width / 3
        rotatedView.clipsToBounds = true
        rotatedView.layer.borderWidth = 10
        rotatedView.layer.borderColor = UIColor.systemPink.withAlphaComponent(0.4).cgColor
    }




}
