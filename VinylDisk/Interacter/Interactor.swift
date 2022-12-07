//
//  Interacter.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

class Interactor: InteractorProtocol {

    init() {}

    var presenter: PresenterProtocol?

    func initialSpeed() {
        presenter?.presentInitialSpeed(speed: 5)
    }

    func pressStartButton() {
        presenter?.presentStartButton(isHidden: true)
    }

    func pressStopButton() {
        presenter?.presentStopButton(isHidden: true)
    }

    func setSliderValue(speed: Float) {
        presenter?.presentUpdateSpeed(speed: speed)
    }


}
